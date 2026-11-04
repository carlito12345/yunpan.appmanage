"""Index the original resources; no resource IDs or business widgets are replaced."""
import json
import re
import xml.etree.ElementTree as ET
from pathlib import Path

ROOT = Path(__file__).resolve().parent
RES = ROOT.parent / '公签版_反编译/apktool/res'
A = '{http://schemas.android.com/apk/res/android}'
P = '{http://schemas.android.com/apk/res-auto}'

def generate():
    resources = ET.parse(RES/'values/public.xml').getroot()
    index = {(x.get('type'), x.get('name')): int(x.get('id'), 16) for x in resources}
    records = []
    rows = []
    for path in sorted((RES/'layout').glob('*.xml')):
        node = ET.parse(path).getroot()
        name = path.stem
        if name == 'activity_apps': strategy = 'apps'
        elif name == 'fragment_file': strategy = 'files'
        elif name == 'fragment_file_wl': strategy = 'network'
        elif name == 'dialog_set': strategy = 'settings'
        elif name.startswith('item_'): strategy = 'item'
        elif name in ('window_logcat','window_app_list_round','window_show_keymap_panel'): strategy='adaptive'
        elif name.startswith('window_'): strategy = 'overlay'
        elif name in ('activity_home1', 'activity_home', 'activity_installer', 'activity_init', 'activity_splash'): strategy = 'preserve-shell'
        elif any(any(t in x.tag for t in ('VideoView', 'SurfaceView', 'TextureView', 'WebView', 'ImageViewTouch', 'ViewPager', 'GLES', 'PhotoView')) for x in node.iter()): strategy = 'media'
        else: strategy = 'adaptive'
        # Constraint edges define reading order; XML declaration order is often unrelated.
        orders = []
        def nodes(parent, path=''):
            yield parent,path
            for i, child in enumerate(parent): yield from nodes(child,path+'/'+str(i))
        for parent, path_key in nodes(node):
            children = list(parent)
            ids = {x.get(A+'id', '').split('/')[-1]: x for x in children if x.get(A+'id')}
            dependencies = {}
            for x in children:
                deps = []
                for key in ('layout_constraintTop_toBottomOf', 'layout_constraintStart_toEndOf', 'layout_constraintLeft_toRightOf'):
                    target = x.get(P+key, '').split('/')[-1]
                    if target in ids and ids[target] is not x: deps.append(ids[target])
                dependencies[x] = deps
            ordered = []
            pending = list(children)
            while pending:
                ready = next((x for x in pending if all(d in ordered for d in dependencies[x])), pending[0])
                ordered.append(ready); pending.remove(ready)
            # Original sibling indexes remain usable for unnamed labels and containers.
            if children:
                bottom_only=lambda x: x.get(P+'layout_constraintBottom_toBottomOf')=='parent' and not any('layout_constraintTop_' in k for k in x.attrib)
                ordered.sort(key=bottom_only)
                orders.append(path_key+':'+','.join(str(children.index(x)) for x in ordered))
        rows.append((index['layout', name], name, strategy, ';'.join(orders)))
        records.append({'layout': name, 'resource_id': hex(index['layout', name]), 'strategy': strategy,
                        'widgets': len(list(node.iter())), 'verification': 'source inventory; native fixture checks tracked separately'})
    q = lambda s: json.dumps(s, ensure_ascii=False)
    code = ['package com.yunpan.appmanage.carui;', 'import android.util.SparseArray;',
            'public final class ResourceIndex {',
            'private static final SparseArray<String> N=new SparseArray<String>();',
            'private static final SparseArray<String> L=new SparseArray<String>();',
            'private static final SparseArray<String> S=new SparseArray<String>();',
            'private static final SparseArray<String> O=new SparseArray<String>();',
            'static { initIds(); initLayouts(); }', 'private static void initIds(){']
    ids = [(v, n) for (t, n), v in index.items() if t == 'id']
    # Keep static initializer bytecode below the DEX/JVM per-method limit.
    for n, start in enumerate(range(0, len(ids), 250)):
        code.append('ids%d();' % n)
    code.append('}')
    for n, start in enumerate(range(0, len(ids), 250)):
        code.append('private static void ids%d(){' % n)
        code.extend('N.put(0x%x,%s);' % (v, q(name)) for v, name in ids[start:start+250])
        code.append('}')
    code.append('private static void initLayouts(){')
    for v, name, strategy, order in rows:
        code.append('L.put(0x%x,%s);S.put(0x%x,%s);O.put(0x%x,%s);' % (v, q(name), v, q(strategy),v,q(order)))
    code.extend(['}', 'public static String name(int id){String n=N.get(id);return n==null?"":n;}',
                 'public static int id(String name){for(int i=0;i<N.size();i++)if(name.equals(N.valueAt(i)))return N.keyAt(i);return 0;}',
                 'public static String layout(int id){String n=L.get(id);return n==null?"":n;}',
                 'public static String strategy(int id){String n=S.get(id);return n==null?"adaptive":n;}',
                 'public static String order(int id){String n=O.get(id);return n==null?"":n;}',
                 '}'])
    (ROOT/'src/main/java/com/yunpan/appmanage/carui/ResourceIndex.java').write_text('\n'.join(code), encoding='utf-8')
    (ROOT/'build/module-coverage.json').write_text(json.dumps(records, indent=2, ensure_ascii=False), encoding='utf-8')
    print('Indexed %d layouts and %d view IDs.' % (len(rows), len(ids)))

if __name__ == '__main__': generate()

"""Edit compiled Android identity without relinking resource IDs or renaming Java/JNI classes."""
import re
import struct

def u16(d,p):return struct.unpack_from('<H',d,p)[0]
def u32(d,p):return struct.unpack_from('<I',d,p)[0]
def chunks(d,start=None):
    p=u16(d,2) if start is None else start
    while p<len(d):
        kind,header,size=struct.unpack_from('<HHI',d,p)
        if not 8<=header<=size or p+size>len(d):raise ValueError('Invalid Android resource chunk')
        yield p,kind,bytes(d[p:p+size]);p+=size
    if p!=len(d):raise ValueError('Truncated Android resource chunks')

class StringPool:
    def __init__(self,data):
        self.header=bytearray(data[:u16(data,2)]);self.flags=u32(data,16);count=u32(data,8);styles=u32(data,12);start=u32(data,20);style_start=u32(data,24)
        self.style_offsets=data[len(self.header)+count*4:len(self.header)+(count+styles)*4]
        self.styles=data[style_start:] if style_start else b'';self.raw=[];self.values=[]
        def length8(p):
            n=data[p];p+=1
            if n&128:n=((n&127)<<8)|data[p];p+=1
            return n,p
        for i in range(count):
            p=start+u32(data,len(self.header)+i*4);begin=p
            if self.flags&256:
                _,p=length8(p);length,p=length8(p);end=p+length+1
                value=data[p:p+length].decode('utf-8',errors='surrogatepass')
                if data[end-1]!=0:raise ValueError('Invalid UTF8 pool terminator')
            else:
                length=u16(data,p);p+=2
                if length&0x8000:length=((length&0x7fff)<<16)|u16(data,p);p+=2
                end=p+length*2+2;value=data[p:end-2].decode('utf-16le',errors='surrogatepass')
                if data[end-2:end]!=b'\0\0':raise ValueError('Invalid UTF16 pool terminator')
            self.raw.append(data[begin:end]);self.values.append(value)
    def add(self,value):
        if value in self.values:return self.values.index(value)
        n=len(value.encode('utf-16le',errors='surrogatepass'))//2
        if self.flags&256:
            data=value.encode('utf-8',errors='surrogatepass')
            def size(v):
                if v>32767:raise ValueError('String exceeds UTF8 resource-pool length')
                return bytes([v]) if v<128 else bytes([(v>>8)|128,v&255])
            raw=size(n)+size(len(data))+data+b'\0'
        else:
            raw=(struct.pack('<H',n) if n<32768 else struct.pack('<HH',(n>>16)|32768,n&65535))+value.encode('utf-16le',errors='surrogatepass')+b'\0\0'
        self.raw.append(raw);self.values.append(value);return len(self.values)-1
    def build(self):
        data=b''.join(self.raw);data+=b'\0'*(-len(data)%4);offsets=[];p=0
        for value in self.raw:offsets.append(p);p+=len(value)
        start=len(self.header)+len(offsets)*4+len(self.style_offsets);style_start=start+len(data) if self.styles else 0
        header=bytearray(self.header);struct.pack_into('<IIIIII',header,4,start+len(data)+len(self.styles),len(offsets),len(self.style_offsets)//4,self.flags&~1,start,style_start)
        return bytes(header)+b''.join(struct.pack('<I',p) for p in offsets)+self.style_offsets+data+self.styles

def xml_parts(data):
    parts=[(kind,bytearray(chunk)) for _,kind,chunk in chunks(data)]
    pool=next(StringPool(chunk) for kind,chunk in parts if kind==1)
    return parts,pool
def xml_nodes(parts,pool):
    for kind,chunk in parts:
        if kind!=0x102:continue
        name=pool.values[u32(chunk,20)];first=16+u16(chunk,24);width=u16(chunk,26);attrs={}
        for i in range(u16(chunk,28)):
            at=first+i*width;key=pool.values[u32(chunk,at+4)];typ=chunk[at+15];value=u32(chunk,at+16)
            attrs[key]=(pool.values[value] if typ==3 else value,typ,at)
        yield name,attrs,chunk
def finish_xml(original,parts,pool):
    header=bytearray(original[:u16(original,2)]);result=bytes(header)+b''.join(pool.build() if kind==1 else bytes(chunk) for kind,chunk in parts)
    result=bytearray(result);struct.pack_into('<I',result,4,len(result));return bytes(result)
def set_value(chunk,pool,at,value,typ=3):
    index=pool.add(value) if typ==3 else value
    struct.pack_into('<I',chunk,at+8,index if typ==3 else 0xffffffff);chunk[at+15]=typ;struct.pack_into('<I',chunk,at+16,index)

def manifest_info(data):
    parts,pool=xml_parts(data);result={'package':None,'application':{},'sdk':{},'providers':[],'permissions':[],'components':[]}
    for name,attrs,_ in xml_nodes(parts,pool):
        values={k:v[0] for k,v in attrs.items()}
        if name=='manifest':result['package']=values['package']
        elif name=='application':result['application']=values
        elif name=='uses-sdk':result['sdk']=values
        elif name=='provider':result['providers'].append(values)
        elif name=='permission':result['permissions'].append(values['name'])
        if name in {'activity','activity-alias','service','receiver','provider'}:result['components'].append({'kind':name,**values})
    if not result['package']:raise ValueError('Manifest application ID missing')
    return result
def validate_package(value):
    if len(value)>127 or not re.fullmatch(r'[A-Za-z][A-Za-z0-9_]*(?:\.[A-Za-z][A-Za-z0-9_]*)+',value):
        raise ValueError('包名需由至少两段字母开头的字母/数字/下划线组成，最长127个ASCII字符')
    return value
def identity_map(data,new):
    info=manifest_info(data);old=info['package'];mapping={old:new};parts,pool=xml_parts(data)
    for name,attrs,_ in xml_nodes(parts,pool):
        if name=='provider' and 'authorities' in attrs:
            for value in attrs['authorities'][0].split(';'):mapping[value]=new+value[len(old):] if value.startswith(old+'.') else new+'.'+value
        if name=='permission' and 'name' in attrs:
            value=attrs['name'][0];mapping[value]=new+value[len(old):] if value.startswith(old+'.') else new+'.'+value
        if name in {'action','category','activity-alias'} and 'name' in attrs:
            value=attrs['name'][0]
            if value.startswith(old+'.'):mapping[value]=new+value[len(old):]
    return info,mapping
def replace_literal(value,old,new,mapping):
    if value in mapping:return mapping[value]
    if value.startswith((old+'.ACTION_',old+'.action.')):return new+value[len(old):]
    uri=re.compile(r'content://('+'|'.join(re.escape(k) for k in sorted(mapping,key=len,reverse=True))+r')(?=[/?#]|$)')
    value=uri.sub(lambda m:'content://'+mapping[m[1]],value)
    value=value.replace('android.resource://'+old,'android.resource://'+new).replace('package:'+old,'package:'+new)
    value=value.replace(old+'/.',new+'/'+old+'.').replace(old+'/'+old+'.',new+'/'+old+'.')
    value=value.replace('/'+old+'/', '/'+new+'/').replace('/.'+old,'/.'+new)
    if value=='.'+old:value='.'+new
    return re.sub(r'(?<![A-Za-z0-9_./])'+re.escape(old)+r'(?![A-Za-z0-9_.])',new,value)
def rewrite_xml(data,old,new,mapping,manifest=False):
    parts,pool=xml_parts(data);changes=[]
    component_tags={'application','activity','service','receiver','provider','instrumentation','fragment'}
    class_attrs={'targetActivity','parentActivityName','backupAgent','appComponentFactory','manageSpaceActivity','zygotePreloadName'}
    for tag,attrs,chunk in xml_nodes(parts,pool):
        for key,(value,typ,at) in attrs.items():
            if typ!=3:continue
            if (key=='name' and tag in component_tags) or key in class_attrs or key=='class':
                replacement=old+value if value.startswith('.') else old+'.'+value if '.' not in value else value
            elif key=='taskAffinity':
                replacement=new+value if value.startswith('.') else new+value[len(old):] if value.startswith(old+'.') else value
            elif key=='authorities':replacement=';'.join(mapping.get(v,v) for v in value.split(';'))
            elif key=='process':replacement=new+value[len(old):] if value.startswith(old+'.') else value
            else:replacement=replace_literal(value,old,new,mapping)
            if replacement!=value:set_value(chunk,pool,at,replacement);changes.append({'element':tag,'attribute':key,'old':value,'new':replacement})
    return (finish_xml(data,parts,pool),changes) if changes else (data,[])
def protect_manifest(data,factory,minimum=28):
    parts,pool=xml_parts(data);found=set()
    for tag,attrs,chunk in xml_nodes(parts,pool):
        if tag=='application' and 'appComponentFactory' in attrs:set_value(chunk,pool,attrs['appComponentFactory'][2],factory);found.add('factory')
        if tag=='uses-sdk' and 'minSdkVersion' in attrs:set_value(chunk,pool,attrs['minSdkVersion'][2],minimum,16);found.add('minimum')
    if found!={'factory','minimum'}:raise ValueError('加固输入须含appComponentFactory和minSdkVersion；可先使用兼容版')
    return finish_xml(data,parts,pool)

def rewrite_resources(data,old,new,icon_ids=(),icon_path=None):
    header=bytearray(data[:u16(data,2)]);parts=[(kind,bytearray(chunk)) for _,kind,chunk in chunks(data)];global_pool=next(StringPool(c) for k,c in parts if k==1)
    icon_index=global_pool.add(icon_path) if icon_path else None;changed_icons=0;changed_packages=0
    for kind,package in parts:
        if kind!=0x200:continue
        name=bytes(package[12:268]).decode('utf-16le').split('\0')[0]
        if name!=old:continue
        encoded=new.encode('utf-16le');package[12:268]=encoded+b'\0'*(256-len(encoded));changed_packages+=1
        if icon_index is None:continue
        pkg=u32(package,8);type_offset=u32(package,284) if u16(package,2)>=288 else 0
        for offset,ck,chunk in chunks(package):
            if ck!=0x201:continue
            type_id=chunk[8]+type_offset;flags=chunk[9];count=u32(chunk,12);start=u32(chunk,16);table=u16(chunk,2)
            for resource_id in icon_ids:
                if resource_id>>24!=pkg or (resource_id>>16)&255!=type_id:continue
                index=resource_id&65535;entry_offset=None
                if flags&1:
                    for i in range(count):
                        if u16(chunk,table+4*i)==index:entry_offset=u16(chunk,table+4*i+2)*4;break
                elif index<count:
                    entry_offset=u16(chunk,table+index*2)*4 if flags&2 and u16(chunk,table+index*2)!=65535 else None if flags&2 else u32(chunk,table+index*4)
                    if entry_offset==0xffffffff:entry_offset=None
                if entry_offset is None:continue
                entry=start+entry_offset
                if u16(chunk,entry+2)&(1|8):raise ValueError('图标是复杂/compact资源，需更新适配规则')
                value=offset+entry+u16(chunk,entry);package[value+3]=3;struct.pack_into('<I',package,value+4,icon_index);changed_icons+=1
    if changed_packages!=1:raise ValueError('未找到唯一的应用资源包，拒绝生成不完整变体')
    if icon_path and not changed_icons:raise ValueError('未找到图标资源配置')
    result=bytearray(bytes(header)+b''.join(global_pool.build() if k==1 and icon_path else bytes(c) for k,c in parts));struct.pack_into('<I',result,4,len(result))
    return bytes(result),{'resource_package_changes':changed_packages,'icon_configurations':changed_icons,'resource_ids_preserved':True}

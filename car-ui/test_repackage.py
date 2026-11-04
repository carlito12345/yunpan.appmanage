"""Identity and icon regression checks against an explicitly supplied compatible APK."""
import os
import struct
import unittest
import zipfile
from pathlib import Path
from apk_identity import *

BASE=Path(os.environ.get('CAR_UI_TEST_APK',Path(__file__).parent/'应用管家-局域网二维码修复-兼容版-R9-20261104.apk'))
class IdentityUnitTest(unittest.TestCase):
    def test_package_validation(self):
        for value in ['com.maxinf.car','com.example.longer.package_name_2026','a.b']:self.assertEqual(value,validate_package(value))
        for value in ['com..car','car','1com.car','com.bad-id','com.car;echo','com.'+'x'*128]:
            with self.assertRaises(ValueError):validate_package(value)
    def test_literals_keep_code_names_and_do_not_double_replace_child_ids(self):
        old='com.yunpan.appmanage';new=old+'.custom';m={old:new,old+'.fileprovider':new+'.fileprovider'}
        self.assertEqual('content://'+new+'.fileprovider/a',replace_literal('content://'+old+'.fileprovider/a',old,new,m))
        self.assertEqual(new+'/'+old+'.ui.ActivityHome',replace_literal(old+'/.ui.ActivityHome',old,new,m))
        self.assertEqual(old+'.ui.ActivityHome',replace_literal(old+'.ui.ActivityHome',old,new,m))
        self.assertEqual(new+'.ACTION_REPLY',replace_literal(old+'.ACTION_REPLY',old,new,m))

@unittest.skipUnless(BASE.is_file(),'Set CAR_UI_TEST_APK to the compatible base APK')
class RealApkIdentityTest(unittest.TestCase):
    def test_short_and_long_ids_keep_component_classes_and_unique_providers(self):
        with zipfile.ZipFile(BASE) as z:
            original=z.read('AndroidManifest.xml');info=manifest_info(original)
            for target in ['com.maxinf.car','com.maxinf.car.codexcheck']:
                before,mapping=identity_map(original,target);data,changes=rewrite_xml(original,info['package'],target,mapping,True);after=manifest_info(data)
                self.assertEqual(target,after['package']);self.assertEqual(before['application']['name'],after['application']['name']);self.assertTrue(changes)
                self.assertTrue(all(p['authorities'].startswith(target+'.') for p in after['providers']));self.assertTrue(all(v.startswith(target+'.') for v in after['permissions']))
                source_pool=xml_parts(original)[1];pool=xml_parts(data)[1]
                self.assertEqual(source_pool.values,pool.values[:len(source_pool.values)])
                self.assertEqual(data,rewrite_xml(data,target,target,{target:target},True)[0])
    def test_resource_ids_and_new_jpeg_entry(self):
        with zipfile.ZipFile(BASE) as z:
            original=z.read('resources.arsc');info=manifest_info(z.read('AndroidManifest.xml'));target='com.maxinf.car.codexcheck';id_value=info['application']['icon'];filename='res/test-new-icon.jpg'
            changed,report=rewrite_resources(original,info['package'],target,{id_value},filename)
            self.assertEqual(1,report['resource_package_changes']);self.assertGreater(report['icon_configurations'],0)
            original_parts=list(chunks(original));parts=list(chunks(changed))
            for (_,kind,a),(_,kind2,b) in zip(original_parts,parts):
                self.assertEqual(kind,kind2)
                if kind==0x200:
                    self.assertEqual(a[8:12],b[8:12]);self.assertEqual(len(a),len(b));self.assertEqual(a[268:284],b[268:284])
            pool=next(StringPool(c) for _,k,c in parts if k==1);self.assertIn(filename,pool.values)
    def test_protection_manifest_preserves_original_application_and_raises_minimum(self):
        with zipfile.ZipFile(BASE) as z:
            original=z.read('AndroidManifest.xml');data=protect_manifest(original,'com.carlito.secure.Factory',29);a=manifest_info(original);b=manifest_info(data)
            self.assertEqual(a['package'],b['package']);self.assertEqual(a['application']['name'],b['application']['name']);self.assertEqual(29,b['sdk']['minSdkVersion']);self.assertEqual('com.carlito.secure.Factory',b['application']['appComponentFactory'])

if __name__=='__main__':unittest.main(verbosity=2)

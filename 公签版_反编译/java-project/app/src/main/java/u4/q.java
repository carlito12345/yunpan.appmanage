package u4;

import com.desay_svautomotive.libsvcarinfo.CarLanID;

/* loaded from: classes.dex */
public enum q implements b5.h {
    TYPE_HEADER_ITEM(0, "header_item"),
    TYPE_STRING_ID_ITEM(1, "string_id_item"),
    TYPE_TYPE_ID_ITEM(2, "type_id_item"),
    TYPE_PROTO_ID_ITEM(3, "proto_id_item"),
    TYPE_FIELD_ID_ITEM(4, "field_id_item"),
    TYPE_METHOD_ID_ITEM(5, "method_id_item"),
    TYPE_CLASS_DEF_ITEM(6, "class_def_item"),
    /* JADX INFO: Fake field, exist only in values array */
    TYPE_CALL_SITE_ID_ITEM(7, "call_site_id_item"),
    /* JADX INFO: Fake field, exist only in values array */
    TYPE_METHOD_HANDLE_ITEM(8, "method_handle_item"),
    TYPE_MAP_LIST(4096, "map_list"),
    TYPE_TYPE_LIST(CarLanID.Send.MUSIC, "type_list"),
    /* JADX INFO: Fake field, exist only in values array */
    TYPE_ANNOTATION_ITEM(CarLanID.Send.RADIO, "annotation_set_ref_list"),
    /* JADX INFO: Fake field, exist only in values array */
    TYPE_DEBUG_INFO_ITEM(CarLanID.Send.PHONE, "annotation_set_item"),
    TYPE_CLASS_DATA_ITEM(8192, "class_data_item"),
    TYPE_CODE_ITEM(8193, "code_item"),
    TYPE_STRING_DATA_ITEM(8194, "string_data_item"),
    /* JADX INFO: Fake field, exist only in values array */
    TYPE_DEBUG_INFO_ITEM(8195, "debug_info_item"),
    /* JADX INFO: Fake field, exist only in values array */
    TYPE_ANNOTATION_ITEM(8196, "annotation_item"),
    TYPE_ENCODED_ARRAY_ITEM(CarLanID.Recv.SYSTEM, "encoded_array_item"),
    TYPE_ANNOTATIONS_DIRECTORY_ITEM(8198, "annotations_directory_item"),
    TYPE_MAP_ITEM(-1, "map_item"),
    /* JADX INFO: Fake field, exist only in values array */
    TYPE_TYPE_ITEM(-1, "type_item"),
    /* JADX INFO: Fake field, exist only in values array */
    TYPE_EXCEPTION_HANDLER_ITEM(-1, "exception_handler_item"),
    /* JADX INFO: Fake field, exist only in values array */
    TYPE_ANNOTATION_SET_REF_ITEM(-1, "annotation_set_ref_item");


    /* renamed from: a, reason: collision with root package name */
    public final int f15393a;

    /* renamed from: b, reason: collision with root package name */
    public final String f15394b;

    /* renamed from: c, reason: collision with root package name */
    public final String f15395c;

    q(int i10, String str) {
        this.f15393a = i10;
        this.f15394b = str;
        this.f15395c = (str.endsWith("_item") ? android.support.v4.media.session.a.l(5, 0, str) : str).replace('_', ' ');
    }

    @Override // b5.h
    public final String a() {
        return this.f15395c;
    }
}

.class public final enum Lu4/q;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lb5/h;


# static fields
.field public static final enum d:Lu4/q;

.field public static final enum e:Lu4/q;

.field public static final enum f:Lu4/q;

.field public static final enum g:Lu4/q;

.field public static final enum h:Lu4/q;

.field public static final enum i:Lu4/q;

.field public static final enum j:Lu4/q;

.field public static final enum k:Lu4/q;

.field public static final enum l:Lu4/q;

.field public static final enum m:Lu4/q;

.field public static final enum n:Lu4/q;

.field public static final enum p:Lu4/q;

.field public static final enum q:Lu4/q;

.field public static final enum r:Lu4/q;

.field public static final enum s:Lu4/q;

.field public static final synthetic t:[Lu4/q;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 1
    new-instance v0, Lu4/q;

    .line 2
    .line 3
    const-string v1, "header_item"

    .line 4
    .line 5
    const-string v2, "TYPE_HEADER_ITEM"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v3, v1}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lu4/q;->d:Lu4/q;

    .line 12
    .line 13
    new-instance v1, Lu4/q;

    .line 14
    .line 15
    const-string v2, "string_id_item"

    .line 16
    .line 17
    const-string v4, "TYPE_STRING_ID_ITEM"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct {v1, v4, v5, v5, v2}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lu4/q;->e:Lu4/q;

    .line 24
    .line 25
    new-instance v2, Lu4/q;

    .line 26
    .line 27
    const-string v4, "type_id_item"

    .line 28
    .line 29
    const-string v6, "TYPE_TYPE_ID_ITEM"

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    invoke-direct {v2, v6, v7, v7, v4}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lu4/q;->f:Lu4/q;

    .line 36
    .line 37
    new-instance v4, Lu4/q;

    .line 38
    .line 39
    const-string v6, "proto_id_item"

    .line 40
    .line 41
    const-string v8, "TYPE_PROTO_ID_ITEM"

    .line 42
    .line 43
    const/4 v9, 0x3

    .line 44
    invoke-direct {v4, v8, v9, v9, v6}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v4, Lu4/q;->g:Lu4/q;

    .line 48
    .line 49
    new-instance v6, Lu4/q;

    .line 50
    .line 51
    const-string v8, "field_id_item"

    .line 52
    .line 53
    const-string v10, "TYPE_FIELD_ID_ITEM"

    .line 54
    .line 55
    const/4 v11, 0x4

    .line 56
    invoke-direct {v6, v10, v11, v11, v8}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v6, Lu4/q;->h:Lu4/q;

    .line 60
    .line 61
    new-instance v8, Lu4/q;

    .line 62
    .line 63
    const-string v10, "method_id_item"

    .line 64
    .line 65
    const-string v12, "TYPE_METHOD_ID_ITEM"

    .line 66
    .line 67
    const/4 v13, 0x5

    .line 68
    invoke-direct {v8, v12, v13, v13, v10}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v8, Lu4/q;->i:Lu4/q;

    .line 72
    .line 73
    new-instance v10, Lu4/q;

    .line 74
    .line 75
    const-string v12, "class_def_item"

    .line 76
    .line 77
    const-string v14, "TYPE_CLASS_DEF_ITEM"

    .line 78
    .line 79
    const/4 v15, 0x6

    .line 80
    invoke-direct {v10, v14, v15, v15, v12}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v10, Lu4/q;->j:Lu4/q;

    .line 84
    .line 85
    new-instance v12, Lu4/q;

    .line 86
    .line 87
    const-string v14, "call_site_id_item"

    .line 88
    .line 89
    const-string v15, "TYPE_CALL_SITE_ID_ITEM"

    .line 90
    .line 91
    const/4 v13, 0x7

    .line 92
    invoke-direct {v12, v15, v13, v13, v14}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance v14, Lu4/q;

    .line 96
    .line 97
    const-string v15, "method_handle_item"

    .line 98
    .line 99
    const-string v13, "TYPE_METHOD_HANDLE_ITEM"

    .line 100
    .line 101
    const/16 v11, 0x8

    .line 102
    .line 103
    invoke-direct {v14, v13, v11, v11, v15}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance v13, Lu4/q;

    .line 107
    .line 108
    const-string v15, "TYPE_MAP_LIST"

    .line 109
    .line 110
    const/16 v11, 0x9

    .line 111
    .line 112
    const/16 v9, 0x1000

    .line 113
    .line 114
    const-string v7, "map_list"

    .line 115
    .line 116
    invoke-direct {v13, v15, v11, v9, v7}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sput-object v13, Lu4/q;->k:Lu4/q;

    .line 120
    .line 121
    new-instance v7, Lu4/q;

    .line 122
    .line 123
    const-string v9, "TYPE_TYPE_LIST"

    .line 124
    .line 125
    const/16 v15, 0xa

    .line 126
    .line 127
    const/16 v11, 0x1001

    .line 128
    .line 129
    const-string v5, "type_list"

    .line 130
    .line 131
    invoke-direct {v7, v9, v15, v11, v5}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sput-object v7, Lu4/q;->l:Lu4/q;

    .line 135
    .line 136
    new-instance v5, Lu4/q;

    .line 137
    .line 138
    const-string v9, "TYPE_ANNOTATION_SET_REF_LIST"

    .line 139
    .line 140
    const/16 v11, 0xb

    .line 141
    .line 142
    const/16 v15, 0x1002

    .line 143
    .line 144
    const-string v3, "annotation_set_ref_list"

    .line 145
    .line 146
    invoke-direct {v5, v9, v11, v15, v3}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance v3, Lu4/q;

    .line 150
    .line 151
    const-string v9, "TYPE_ANNOTATION_SET_ITEM"

    .line 152
    .line 153
    const/16 v15, 0xc

    .line 154
    .line 155
    const/16 v11, 0x1003

    .line 156
    .line 157
    move-object/from16 v16, v5

    .line 158
    .line 159
    const-string v5, "annotation_set_item"

    .line 160
    .line 161
    invoke-direct {v3, v9, v15, v11, v5}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance v5, Lu4/q;

    .line 165
    .line 166
    const-string v9, "TYPE_CLASS_DATA_ITEM"

    .line 167
    .line 168
    const/16 v11, 0xd

    .line 169
    .line 170
    const/16 v15, 0x2000

    .line 171
    .line 172
    move-object/from16 v17, v3

    .line 173
    .line 174
    const-string v3, "class_data_item"

    .line 175
    .line 176
    invoke-direct {v5, v9, v11, v15, v3}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 177
    .line 178
    .line 179
    sput-object v5, Lu4/q;->m:Lu4/q;

    .line 180
    .line 181
    new-instance v3, Lu4/q;

    .line 182
    .line 183
    const-string v9, "TYPE_CODE_ITEM"

    .line 184
    .line 185
    const/16 v15, 0xe

    .line 186
    .line 187
    const/16 v11, 0x2001

    .line 188
    .line 189
    move-object/from16 v18, v5

    .line 190
    .line 191
    const-string v5, "code_item"

    .line 192
    .line 193
    invoke-direct {v3, v9, v15, v11, v5}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 194
    .line 195
    .line 196
    sput-object v3, Lu4/q;->n:Lu4/q;

    .line 197
    .line 198
    new-instance v5, Lu4/q;

    .line 199
    .line 200
    const-string v9, "TYPE_STRING_DATA_ITEM"

    .line 201
    .line 202
    const/16 v11, 0xf

    .line 203
    .line 204
    const/16 v15, 0x2002

    .line 205
    .line 206
    move-object/from16 v19, v3

    .line 207
    .line 208
    const-string v3, "string_data_item"

    .line 209
    .line 210
    invoke-direct {v5, v9, v11, v15, v3}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    sput-object v5, Lu4/q;->p:Lu4/q;

    .line 214
    .line 215
    new-instance v3, Lu4/q;

    .line 216
    .line 217
    const-string v9, "TYPE_DEBUG_INFO_ITEM"

    .line 218
    .line 219
    const/16 v15, 0x10

    .line 220
    .line 221
    const/16 v11, 0x2003

    .line 222
    .line 223
    move-object/from16 v20, v5

    .line 224
    .line 225
    const-string v5, "debug_info_item"

    .line 226
    .line 227
    invoke-direct {v3, v9, v15, v11, v5}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 228
    .line 229
    .line 230
    new-instance v5, Lu4/q;

    .line 231
    .line 232
    const-string v9, "TYPE_ANNOTATION_ITEM"

    .line 233
    .line 234
    const/16 v11, 0x11

    .line 235
    .line 236
    const/16 v15, 0x2004

    .line 237
    .line 238
    move-object/from16 v21, v3

    .line 239
    .line 240
    const-string v3, "annotation_item"

    .line 241
    .line 242
    invoke-direct {v5, v9, v11, v15, v3}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 243
    .line 244
    .line 245
    new-instance v3, Lu4/q;

    .line 246
    .line 247
    const-string v9, "TYPE_ENCODED_ARRAY_ITEM"

    .line 248
    .line 249
    const/16 v15, 0x12

    .line 250
    .line 251
    const/16 v11, 0x2005

    .line 252
    .line 253
    move-object/from16 v22, v5

    .line 254
    .line 255
    const-string v5, "encoded_array_item"

    .line 256
    .line 257
    invoke-direct {v3, v9, v15, v11, v5}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 258
    .line 259
    .line 260
    sput-object v3, Lu4/q;->q:Lu4/q;

    .line 261
    .line 262
    new-instance v5, Lu4/q;

    .line 263
    .line 264
    const-string v9, "TYPE_ANNOTATIONS_DIRECTORY_ITEM"

    .line 265
    .line 266
    const/16 v11, 0x13

    .line 267
    .line 268
    const/16 v15, 0x2006

    .line 269
    .line 270
    move-object/from16 v23, v3

    .line 271
    .line 272
    const-string v3, "annotations_directory_item"

    .line 273
    .line 274
    invoke-direct {v5, v9, v11, v15, v3}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 275
    .line 276
    .line 277
    sput-object v5, Lu4/q;->r:Lu4/q;

    .line 278
    .line 279
    new-instance v3, Lu4/q;

    .line 280
    .line 281
    const-string v9, "TYPE_MAP_ITEM"

    .line 282
    .line 283
    const/16 v15, 0x14

    .line 284
    .line 285
    const/4 v11, -0x1

    .line 286
    move-object/from16 v24, v5

    .line 287
    .line 288
    const-string v5, "map_item"

    .line 289
    .line 290
    invoke-direct {v3, v9, v15, v11, v5}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 291
    .line 292
    .line 293
    sput-object v3, Lu4/q;->s:Lu4/q;

    .line 294
    .line 295
    new-instance v5, Lu4/q;

    .line 296
    .line 297
    const-string v9, "type_item"

    .line 298
    .line 299
    const-string v15, "TYPE_TYPE_ITEM"

    .line 300
    .line 301
    move-object/from16 v25, v3

    .line 302
    .line 303
    const/16 v3, 0x15

    .line 304
    .line 305
    invoke-direct {v5, v15, v3, v11, v9}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 306
    .line 307
    .line 308
    new-instance v9, Lu4/q;

    .line 309
    .line 310
    const-string v15, "exception_handler_item"

    .line 311
    .line 312
    const-string v3, "TYPE_EXCEPTION_HANDLER_ITEM"

    .line 313
    .line 314
    move-object/from16 v26, v5

    .line 315
    .line 316
    const/16 v5, 0x16

    .line 317
    .line 318
    invoke-direct {v9, v3, v5, v11, v15}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 319
    .line 320
    .line 321
    new-instance v3, Lu4/q;

    .line 322
    .line 323
    const-string v5, "annotation_set_ref_item"

    .line 324
    .line 325
    const-string v15, "TYPE_ANNOTATION_SET_REF_ITEM"

    .line 326
    .line 327
    move-object/from16 v27, v9

    .line 328
    .line 329
    const/16 v9, 0x17

    .line 330
    .line 331
    invoke-direct {v3, v15, v9, v11, v5}, Lu4/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const/16 v5, 0x18

    .line 335
    .line 336
    new-array v5, v5, [Lu4/q;

    .line 337
    .line 338
    const/4 v9, 0x0

    .line 339
    aput-object v0, v5, v9

    .line 340
    .line 341
    const/4 v0, 0x1

    .line 342
    aput-object v1, v5, v0

    .line 343
    .line 344
    const/4 v0, 0x2

    .line 345
    aput-object v2, v5, v0

    .line 346
    .line 347
    const/4 v0, 0x3

    .line 348
    aput-object v4, v5, v0

    .line 349
    .line 350
    const/4 v0, 0x4

    .line 351
    aput-object v6, v5, v0

    .line 352
    .line 353
    const/4 v0, 0x5

    .line 354
    aput-object v8, v5, v0

    .line 355
    .line 356
    const/4 v0, 0x6

    .line 357
    aput-object v10, v5, v0

    .line 358
    .line 359
    const/4 v0, 0x7

    .line 360
    aput-object v12, v5, v0

    .line 361
    .line 362
    const/16 v0, 0x8

    .line 363
    .line 364
    aput-object v14, v5, v0

    .line 365
    .line 366
    const/16 v0, 0x9

    .line 367
    .line 368
    aput-object v13, v5, v0

    .line 369
    .line 370
    const/16 v0, 0xa

    .line 371
    .line 372
    aput-object v7, v5, v0

    .line 373
    .line 374
    const/16 v0, 0xb

    .line 375
    .line 376
    aput-object v16, v5, v0

    .line 377
    .line 378
    const/16 v0, 0xc

    .line 379
    .line 380
    aput-object v17, v5, v0

    .line 381
    .line 382
    const/16 v0, 0xd

    .line 383
    .line 384
    aput-object v18, v5, v0

    .line 385
    .line 386
    const/16 v0, 0xe

    .line 387
    .line 388
    aput-object v19, v5, v0

    .line 389
    .line 390
    const/16 v0, 0xf

    .line 391
    .line 392
    aput-object v20, v5, v0

    .line 393
    .line 394
    const/16 v0, 0x10

    .line 395
    .line 396
    aput-object v21, v5, v0

    .line 397
    .line 398
    const/16 v0, 0x11

    .line 399
    .line 400
    aput-object v22, v5, v0

    .line 401
    .line 402
    const/16 v0, 0x12

    .line 403
    .line 404
    aput-object v23, v5, v0

    .line 405
    .line 406
    const/16 v0, 0x13

    .line 407
    .line 408
    aput-object v24, v5, v0

    .line 409
    .line 410
    const/16 v0, 0x14

    .line 411
    .line 412
    aput-object v25, v5, v0

    .line 413
    .line 414
    const/16 v0, 0x15

    .line 415
    .line 416
    aput-object v26, v5, v0

    .line 417
    .line 418
    const/16 v0, 0x16

    .line 419
    .line 420
    aput-object v27, v5, v0

    .line 421
    .line 422
    const/16 v0, 0x17

    .line 423
    .line 424
    aput-object v3, v5, v0

    .line 425
    .line 426
    sput-object v5, Lu4/q;->t:[Lu4/q;

    .line 427
    .line 428
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lu4/q;->a:I

    .line 5
    .line 6
    iput-object p4, p0, Lu4/q;->b:Ljava/lang/String;

    .line 7
    .line 8
    const-string p1, "_item"

    .line 9
    .line 10
    invoke-virtual {p4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x5

    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-static {p1, p2, p4}, Landroid/support/v4/media/session/a;->l(IILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p4

    .line 22
    :cond_0
    const/16 p1, 0x5f

    .line 23
    .line 24
    const/16 p2, 0x20

    .line 25
    .line 26
    invoke-virtual {p4, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lu4/q;->c:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu4/q;
    .locals 1

    .line 1
    const-class v0, Lu4/q;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lu4/q;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lu4/q;
    .locals 1

    .line 1
    sget-object v0, Lu4/q;->t:[Lu4/q;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lu4/q;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lu4/q;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu4/q;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

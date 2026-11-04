.class public final Lj1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:[B

.field public static final B:[B

.field public static final C:[Ljava/lang/String;

.field public static final D:[I

.field public static final E:[B

.field public static final F:Lj1/d;

.field public static final G:[[Lj1/d;

.field public static final H:[Lj1/d;

.field public static final I:[Ljava/util/HashMap;

.field public static final J:[Ljava/util/HashMap;

.field public static final K:Ljava/util/HashSet;

.field public static final L:Ljava/util/HashMap;

.field public static final M:Ljava/nio/charset/Charset;

.field public static final N:[B

.field public static final O:[B

.field public static final m:Z

.field public static final n:[I

.field public static final o:[I

.field public static final p:[B

.field public static final q:[B

.field public static final r:[B

.field public static final s:[B

.field public static final t:[B

.field public static final u:[B

.field public static final v:[B

.field public static final w:[B

.field public static final x:[B

.field public static final y:[B

.field public static final z:[B


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/io/FileDescriptor;

.field public final c:Landroid/content/res/AssetManager$AssetInputStream;

.field public d:I

.field public final e:[Ljava/util/HashMap;

.field public final f:Ljava/util/HashSet;

.field public g:Ljava/nio/ByteOrder;

.field public h:Z

.field public i:I

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method static constructor <clinit>()V
    .locals 109

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2
    const-string v2, "ExifInterface"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    sput-boolean v2, Lj1/g;->m:Z

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    .line 4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x4

    new-array v9, v8, [Ljava/lang/Integer;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    aput-object v5, v9, v2

    const/4 v5, 0x2

    aput-object v1, v9, v5

    aput-object v7, v9, v0

    .line 5
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x5

    .line 7
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-array v11, v8, [Ljava/lang/Integer;

    aput-object v9, v11, v10

    aput-object v12, v11, v2

    aput-object v13, v11, v5

    aput-object v15, v11, v0

    .line 8
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 9
    filled-new-array {v6, v6, v6}, [I

    move-result-object v11

    sput-object v11, Lj1/g;->n:[I

    .line 10
    filled-new-array {v6}, [I

    move-result-object v11

    sput-object v11, Lj1/g;->o:[I

    .line 11
    new-array v11, v0, [B

    fill-array-data v11, :array_0

    sput-object v11, Lj1/g;->p:[B

    .line 12
    new-array v11, v8, [B

    fill-array-data v11, :array_1

    sput-object v11, Lj1/g;->q:[B

    .line 13
    new-array v11, v8, [B

    fill-array-data v11, :array_2

    sput-object v11, Lj1/g;->r:[B

    .line 14
    new-array v11, v8, [B

    fill-array-data v11, :array_3

    sput-object v11, Lj1/g;->s:[B

    .line 15
    new-array v11, v4, [B

    fill-array-data v11, :array_4

    sput-object v11, Lj1/g;->t:[B

    const/16 v13, 0xa

    .line 16
    new-array v11, v13, [B

    fill-array-data v11, :array_5

    sput-object v11, Lj1/g;->u:[B

    .line 17
    new-array v11, v6, [B

    fill-array-data v11, :array_6

    sput-object v11, Lj1/g;->v:[B

    .line 18
    new-array v11, v8, [B

    fill-array-data v11, :array_7

    sput-object v11, Lj1/g;->w:[B

    .line 19
    new-array v11, v8, [B

    fill-array-data v11, :array_8

    sput-object v11, Lj1/g;->x:[B

    .line 20
    new-array v11, v8, [B

    fill-array-data v11, :array_9

    sput-object v11, Lj1/g;->y:[B

    .line 21
    new-array v11, v8, [B

    fill-array-data v11, :array_a

    sput-object v11, Lj1/g;->z:[B

    .line 22
    new-array v11, v8, [B

    fill-array-data v11, :array_b

    sput-object v11, Lj1/g;->A:[B

    .line 23
    new-array v11, v8, [B

    fill-array-data v11, :array_c

    sput-object v11, Lj1/g;->B:[B

    .line 24
    const-string v11, "VP8X"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 25
    const-string v11, "VP8L"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 26
    const-string v11, "VP8 "

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 27
    const-string v11, "ANIM"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 28
    const-string v11, "ANMF"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    const/16 v11, 0xe

    .line 29
    new-array v13, v11, [Ljava/lang/String;

    const-string v20, ""

    aput-object v20, v13, v10

    const-string v20, "BYTE"

    aput-object v20, v13, v2

    const-string v20, "STRING"

    aput-object v20, v13, v5

    const-string v20, "USHORT"

    aput-object v20, v13, v0

    const-string v20, "ULONG"

    aput-object v20, v13, v8

    const-string v20, "URATIONAL"

    aput-object v20, v13, v14

    const-string v20, "SBYTE"

    aput-object v20, v13, v4

    const-string v20, "UNDEFINED"

    const/16 v16, 0x7

    aput-object v20, v13, v16

    const-string v20, "SSHORT"

    aput-object v20, v13, v6

    const-string v20, "SLONG"

    const/16 v10, 0x9

    aput-object v20, v13, v10

    const-string v20, "SRATIONAL"

    const/16 v19, 0xa

    aput-object v20, v13, v19

    const-string v20, "SINGLE"

    const/16 v10, 0xb

    aput-object v20, v13, v10

    const-string v20, "DOUBLE"

    const/16 v10, 0xc

    aput-object v20, v13, v10

    const-string v20, "IFD"

    const/16 v18, 0xd

    aput-object v20, v13, v18

    sput-object v13, Lj1/g;->C:[Ljava/lang/String;

    .line 30
    new-array v13, v11, [I

    fill-array-data v13, :array_d

    sput-object v13, Lj1/g;->D:[I

    .line 31
    new-array v13, v6, [B

    fill-array-data v13, :array_e

    sput-object v13, Lj1/g;->E:[B

    .line 32
    new-instance v13, Lj1/d;

    const-string v11, "NewSubfileType"

    const/16 v10, 0xfe

    invoke-direct {v13, v11, v10, v8}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lj1/d;

    const-string v6, "SubfileType"

    const/16 v2, 0xff

    invoke-direct {v10, v6, v2, v8}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lj1/d;

    const-string v4, "ImageWidth"

    const/16 v14, 0x100

    invoke-direct {v2, v4, v14, v0, v8}, Lj1/d;-><init>(Ljava/lang/String;III)V

    new-instance v4, Lj1/d;

    const-string v14, "ImageLength"

    const/16 v5, 0x101

    invoke-direct {v4, v14, v5, v0, v8}, Lj1/d;-><init>(Ljava/lang/String;III)V

    new-instance v14, Lj1/d;

    const-string v5, "BitsPerSample"

    const/16 v8, 0x102

    invoke-direct {v14, v5, v8, v0}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lj1/d;

    move-object/from16 v23, v7

    const-string v7, "Compression"

    move-object/from16 v24, v12

    const/16 v12, 0x103

    invoke-direct {v8, v7, v12, v0}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lj1/d;

    move-object/from16 v26, v1

    const-string v1, "PhotometricInterpretation"

    move-object/from16 v27, v9

    const/16 v9, 0x106

    invoke-direct {v12, v1, v9, v0}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lj1/d;

    const-string v0, "ImageDescription"

    move-object/from16 v29, v3

    const/16 v3, 0x10e

    move-object/from16 v30, v15

    const/4 v15, 0x2

    invoke-direct {v9, v0, v3, v15}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lj1/d;

    move-object/from16 v32, v0

    const-string v0, "Make"

    move-object/from16 v33, v1

    const/16 v1, 0x10f

    invoke-direct {v3, v0, v1, v15}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lj1/d;

    const-string v1, "Model"

    move-object/from16 v34, v7

    const/16 v7, 0x110

    invoke-direct {v0, v1, v7, v15}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v7, "StripOffsets"

    const/16 v15, 0x111

    move-object/from16 v35, v5

    move-object/from16 v36, v6

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v1, v7, v15, v5, v6}, Lj1/d;-><init>(Ljava/lang/String;III)V

    new-instance v6, Lj1/d;

    const-string v15, "Orientation"

    move-object/from16 v37, v7

    const/16 v7, 0x112

    invoke-direct {v6, v15, v7, v5}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lj1/d;

    const-string v15, "SamplesPerPixel"

    move-object/from16 v38, v11

    const/16 v11, 0x115

    invoke-direct {v7, v15, v11, v5}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lj1/d;

    const-string v15, "RowsPerStrip"

    move-object/from16 v39, v7

    const/16 v7, 0x116

    move-object/from16 v40, v6

    const/4 v6, 0x4

    invoke-direct {v11, v15, v7, v5, v6}, Lj1/d;-><init>(Ljava/lang/String;III)V

    new-instance v7, Lj1/d;

    const-string v15, "StripByteCounts"

    move-object/from16 v41, v11

    const/16 v11, 0x117

    invoke-direct {v7, v15, v11, v5, v6}, Lj1/d;-><init>(Ljava/lang/String;III)V

    new-instance v5, Lj1/d;

    const-string v6, "XResolution"

    const/16 v11, 0x11a

    const/4 v15, 0x5

    invoke-direct {v5, v6, v11, v15}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v11, "YResolution"

    move-object/from16 v42, v5

    const/16 v5, 0x11b

    invoke-direct {v6, v11, v5, v15}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lj1/d;

    const-string v11, "PlanarConfiguration"

    const/16 v15, 0x11c

    move-object/from16 v43, v6

    const/4 v6, 0x3

    invoke-direct {v5, v11, v15, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lj1/d;

    const-string v15, "ResolutionUnit"

    move-object/from16 v44, v5

    const/16 v5, 0x128

    invoke-direct {v11, v15, v5, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lj1/d;

    const-string v15, "TransferFunction"

    move-object/from16 v45, v11

    const/16 v11, 0x12d

    invoke-direct {v5, v15, v11, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v11, "Software"

    const/16 v15, 0x131

    move-object/from16 v46, v5

    const/4 v5, 0x2

    invoke-direct {v6, v11, v15, v5}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lj1/d;

    const-string v15, "DateTime"

    move-object/from16 v47, v6

    const/16 v6, 0x132

    invoke-direct {v11, v15, v6, v5}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v15, "Artist"

    move-object/from16 v48, v11

    const/16 v11, 0x13b

    invoke-direct {v6, v15, v11, v5}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lj1/d;

    const-string v11, "WhitePoint"

    const/16 v15, 0x13e

    move-object/from16 v49, v6

    const/4 v6, 0x5

    invoke-direct {v5, v11, v15, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lj1/d;

    const-string v15, "PrimaryChromaticities"

    move-object/from16 v50, v5

    const/16 v5, 0x13f

    invoke-direct {v11, v15, v5, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lj1/d;

    const-string v6, "SubIFDPointer"

    const/16 v15, 0x14a

    move-object/from16 v51, v11

    const/4 v11, 0x4

    invoke-direct {v5, v6, v15, v11}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lj1/d;

    move-object/from16 v52, v6

    const-string v6, "JPEGInterchangeFormat"

    move-object/from16 v53, v5

    const/16 v5, 0x201

    invoke-direct {v15, v6, v5, v11}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lj1/d;

    const-string v6, "JPEGInterchangeFormatLength"

    move-object/from16 v54, v15

    const/16 v15, 0x202

    invoke-direct {v5, v6, v15, v11}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v11, "YCbCrCoefficients"

    const/16 v15, 0x211

    move-object/from16 v55, v5

    const/4 v5, 0x5

    invoke-direct {v6, v11, v15, v5}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lj1/d;

    const-string v11, "YCbCrSubSampling"

    const/16 v15, 0x212

    move-object/from16 v56, v6

    const/4 v6, 0x3

    invoke-direct {v5, v11, v15, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lj1/d;

    const-string v15, "YCbCrPositioning"

    move-object/from16 v57, v5

    const/16 v5, 0x213

    invoke-direct {v11, v15, v5, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lj1/d;

    const-string v6, "ReferenceBlackWhite"

    const/16 v15, 0x214

    move-object/from16 v58, v11

    const/4 v11, 0x5

    invoke-direct {v5, v6, v15, v11}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v11, "Copyright"

    const v15, 0x8298

    move-object/from16 v59, v5

    const/4 v5, 0x2

    invoke-direct {v6, v11, v15, v5}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lj1/d;

    const-string v11, "ExifIFDPointer"

    const v15, 0x8769

    move-object/from16 v60, v6

    const/4 v6, 0x4

    invoke-direct {v5, v11, v15, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lj1/d;

    move-object/from16 v61, v11

    const-string v11, "GPSInfoIFDPointer"

    move-object/from16 v62, v5

    const v5, 0x8825

    invoke-direct {v15, v11, v5, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lj1/d;

    move-object/from16 v63, v11

    const-string v11, "SensorTopBorder"

    invoke-direct {v5, v11, v6, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lj1/d;

    move-object/from16 v64, v5

    const-string v5, "SensorLeftBorder"

    move-object/from16 v65, v15

    const/4 v15, 0x5

    invoke-direct {v11, v5, v15, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lj1/d;

    const-string v15, "SensorBottomBorder"

    move-object/from16 v66, v11

    const/4 v11, 0x6

    invoke-direct {v5, v15, v11, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lj1/d;

    const-string v15, "SensorRightBorder"

    move-object/from16 v67, v5

    const/4 v5, 0x7

    invoke-direct {v11, v15, v5, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v15, "ISO"

    const/16 v5, 0x17

    move-object/from16 v68, v11

    const/4 v11, 0x3

    invoke-direct {v6, v15, v5, v11}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lj1/d;

    const-string v15, "JpgFromRaw"

    const/16 v5, 0x2e

    move-object/from16 v69, v6

    const/4 v6, 0x7

    invoke-direct {v11, v15, v5, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lj1/d;

    const-string v6, "Xmp"

    const/16 v15, 0x2bc

    move-object/from16 v70, v11

    const/4 v11, 0x1

    invoke-direct {v5, v6, v15, v11}, Lj1/d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2a

    new-array v6, v6, [Lj1/d;

    const/4 v15, 0x0

    aput-object v13, v6, v15

    aput-object v10, v6, v11

    const/4 v10, 0x2

    aput-object v2, v6, v10

    const/4 v2, 0x3

    aput-object v4, v6, v2

    const/4 v2, 0x4

    aput-object v14, v6, v2

    const/4 v2, 0x5

    aput-object v8, v6, v2

    const/4 v2, 0x6

    aput-object v12, v6, v2

    const/4 v2, 0x7

    aput-object v9, v6, v2

    const/16 v2, 0x8

    aput-object v3, v6, v2

    const/16 v2, 0x9

    aput-object v0, v6, v2

    const/16 v0, 0xa

    aput-object v1, v6, v0

    const/16 v0, 0xb

    aput-object v40, v6, v0

    const/16 v0, 0xc

    aput-object v39, v6, v0

    const/16 v0, 0xd

    aput-object v41, v6, v0

    const/16 v0, 0xe

    aput-object v7, v6, v0

    const/16 v0, 0xf

    aput-object v42, v6, v0

    const/16 v1, 0x10

    aput-object v43, v6, v1

    const/16 v2, 0x11

    aput-object v44, v6, v2

    const/16 v3, 0x12

    aput-object v45, v6, v3

    const/16 v4, 0x13

    aput-object v46, v6, v4

    const/16 v4, 0x14

    aput-object v47, v6, v4

    const/16 v4, 0x15

    aput-object v48, v6, v4

    const/16 v4, 0x16

    aput-object v49, v6, v4

    const/16 v4, 0x17

    aput-object v50, v6, v4

    const/16 v4, 0x18

    aput-object v51, v6, v4

    const/16 v4, 0x19

    aput-object v53, v6, v4

    const/16 v4, 0x1a

    aput-object v54, v6, v4

    const/16 v4, 0x1b

    aput-object v55, v6, v4

    const/16 v4, 0x1c

    aput-object v56, v6, v4

    const/16 v4, 0x1d

    aput-object v57, v6, v4

    const/16 v4, 0x1e

    aput-object v58, v6, v4

    const/16 v4, 0x1f

    aput-object v59, v6, v4

    const/16 v4, 0x20

    aput-object v60, v6, v4

    const/16 v4, 0x21

    aput-object v62, v6, v4

    const/16 v4, 0x22

    aput-object v65, v6, v4

    const/16 v4, 0x23

    aput-object v64, v6, v4

    const/16 v4, 0x24

    aput-object v66, v6, v4

    const/16 v4, 0x25

    aput-object v67, v6, v4

    const/16 v4, 0x26

    aput-object v68, v6, v4

    const/16 v4, 0x27

    aput-object v69, v6, v4

    const/16 v4, 0x28

    aput-object v70, v6, v4

    const/16 v4, 0x29

    aput-object v5, v6, v4

    .line 33
    new-instance v4, Lj1/d;

    const-string v5, "ExposureTime"

    const v7, 0x829a

    const/4 v8, 0x5

    invoke-direct {v4, v5, v7, v8}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lj1/d;

    const-string v7, "FNumber"

    const v9, 0x829d

    invoke-direct {v5, v7, v9, v8}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lj1/d;

    const-string v8, "ExposureProgram"

    const v9, 0x8822

    const/4 v10, 0x3

    invoke-direct {v7, v8, v9, v10}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lj1/d;

    const-string v9, "SpectralSensitivity"

    const v11, 0x8824

    const/4 v12, 0x2

    invoke-direct {v8, v9, v11, v12}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lj1/d;

    const-string v11, "PhotographicSensitivity"

    const v12, 0x8827

    invoke-direct {v9, v11, v12, v10}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lj1/d;

    const-string v12, "OECF"

    const v13, 0x8828

    const/4 v14, 0x7

    invoke-direct {v11, v12, v13, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lj1/d;

    const-string v13, "SensitivityType"

    const v14, 0x8830

    invoke-direct {v12, v13, v14, v10}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lj1/d;

    const-string v13, "StandardOutputSensitivity"

    const v14, 0x8831

    const/4 v15, 0x4

    invoke-direct {v10, v13, v14, v15}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lj1/d;

    const-string v14, "RecommendedExposureIndex"

    const v3, 0x8832

    invoke-direct {v13, v14, v3, v15}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lj1/d;

    const-string v14, "ISOSpeed"

    const v2, 0x8833

    invoke-direct {v3, v14, v2, v15}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lj1/d;

    const-string v14, "ISOSpeedLatitudeyyy"

    const v1, 0x8834

    invoke-direct {v2, v14, v1, v15}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v14, "ISOSpeedLatitudezzz"

    const v0, 0x8835

    invoke-direct {v1, v14, v0, v15}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lj1/d;

    const-string v14, "ExifVersion"

    const v15, 0x9000

    move-object/from16 v43, v6

    const/4 v6, 0x2

    invoke-direct {v0, v14, v15, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "DateTimeOriginal"

    move-object/from16 v44, v0

    const v0, 0x9003

    invoke-direct {v14, v15, v0, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lj1/d;

    const-string v15, "DateTimeDigitized"

    move-object/from16 v45, v14

    const v14, 0x9004

    invoke-direct {v0, v15, v14, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "OffsetTime"

    move-object/from16 v46, v0

    const v0, 0x9010

    invoke-direct {v14, v15, v0, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lj1/d;

    const-string v15, "OffsetTimeOriginal"

    move-object/from16 v47, v14

    const v14, 0x9011

    invoke-direct {v0, v15, v14, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "OffsetTimeDigitized"

    move-object/from16 v48, v0

    const v0, 0x9012

    invoke-direct {v14, v15, v0, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lj1/d;

    const-string v6, "ComponentsConfiguration"

    const v15, 0x9101

    move-object/from16 v49, v14

    const/4 v14, 0x7

    invoke-direct {v0, v6, v15, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v14, "CompressedBitsPerPixel"

    const v15, 0x9102

    move-object/from16 v50, v0

    const/4 v0, 0x5

    invoke-direct {v6, v14, v15, v0}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "ShutterSpeedValue"

    const v0, 0x9201

    move-object/from16 v51, v6

    const/16 v6, 0xa

    invoke-direct {v14, v15, v0, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lj1/d;

    const-string v15, "ApertureValue"

    const v6, 0x9202

    move-object/from16 v53, v14

    const/4 v14, 0x5

    invoke-direct {v0, v15, v6, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v14, "BrightnessValue"

    const v15, 0x9203

    move-object/from16 v54, v0

    const/16 v0, 0xa

    invoke-direct {v6, v14, v15, v0}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "ExposureBiasValue"

    move-object/from16 v55, v6

    const v6, 0x9204

    invoke-direct {v14, v15, v6, v0}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lj1/d;

    const-string v6, "MaxApertureValue"

    const v15, 0x9205

    move-object/from16 v56, v14

    const/4 v14, 0x5

    invoke-direct {v0, v6, v15, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v15, "SubjectDistance"

    move-object/from16 v57, v0

    const v0, 0x9206

    invoke-direct {v6, v15, v0, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lj1/d;

    const-string v14, "MeteringMode"

    const v15, 0x9207

    move-object/from16 v58, v6

    const/4 v6, 0x3

    invoke-direct {v0, v14, v15, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "LightSource"

    move-object/from16 v59, v0

    const v0, 0x9208

    invoke-direct {v14, v15, v0, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lj1/d;

    const-string v15, "Flash"

    move-object/from16 v60, v14

    const v14, 0x9209

    invoke-direct {v0, v15, v14, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "FocalLength"

    const v6, 0x920a

    move-object/from16 v62, v0

    const/4 v0, 0x5

    invoke-direct {v14, v15, v6, v0}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lj1/d;

    const-string v6, "SubjectArea"

    const v15, 0x9214

    move-object/from16 v64, v14

    const/4 v14, 0x3

    invoke-direct {v0, v6, v15, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v14, "MakerNote"

    const v15, 0x927c

    move-object/from16 v65, v0

    const/4 v0, 0x7

    invoke-direct {v6, v14, v15, v0}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "UserComment"

    move-object/from16 v66, v6

    const v6, 0x9286

    invoke-direct {v14, v15, v6, v0}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lj1/d;

    const-string v6, "SubSecTime"

    const v15, 0x9290

    move-object/from16 v67, v14

    const/4 v14, 0x2

    invoke-direct {v0, v6, v15, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v15, "SubSecTimeOriginal"

    move-object/from16 v68, v0

    const v0, 0x9291

    invoke-direct {v6, v15, v0, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lj1/d;

    const-string v15, "SubSecTimeDigitized"

    move-object/from16 v69, v6

    const v6, 0x9292

    invoke-direct {v0, v15, v6, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v14, "FlashpixVersion"

    const v15, 0xa000

    move-object/from16 v70, v0

    const/4 v0, 0x7

    invoke-direct {v6, v14, v15, v0}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lj1/d;

    const-string v14, "ColorSpace"

    const v15, 0xa001

    move-object/from16 v71, v6

    const/4 v6, 0x3

    invoke-direct {v0, v14, v15, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "PixelXDimension"

    move-object/from16 v72, v0

    const v0, 0xa002

    move-object/from16 v73, v1

    const/4 v1, 0x4

    invoke-direct {v14, v15, v0, v6, v1}, Lj1/d;-><init>(Ljava/lang/String;III)V

    new-instance v0, Lj1/d;

    const-string v15, "PixelYDimension"

    move-object/from16 v74, v14

    const v14, 0xa003

    invoke-direct {v0, v15, v14, v6, v1}, Lj1/d;-><init>(Ljava/lang/String;III)V

    new-instance v6, Lj1/d;

    const-string v14, "RelatedSoundFile"

    const v15, 0xa004

    const/4 v1, 0x2

    invoke-direct {v6, v14, v15, v1}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v14, "InteroperabilityIFDPointer"

    const v15, 0xa005

    move-object/from16 v75, v6

    const/4 v6, 0x4

    invoke-direct {v1, v14, v15, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v14, "FlashEnergy"

    const v15, 0xa20b

    move-object/from16 v76, v1

    const/4 v1, 0x5

    invoke-direct {v6, v14, v15, v1}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "SpatialFrequencyResponse"

    const v1, 0xa20c

    move-object/from16 v77, v6

    const/4 v6, 0x7

    invoke-direct {v14, v15, v1, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v6, "FocalPlaneXResolution"

    const v15, 0xa20e

    move-object/from16 v78, v14

    const/4 v14, 0x5

    invoke-direct {v1, v6, v15, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v15, "FocalPlaneYResolution"

    move-object/from16 v79, v1

    const v1, 0xa20f

    invoke-direct {v6, v15, v1, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v14, "FocalPlaneResolutionUnit"

    const v15, 0xa210

    move-object/from16 v80, v6

    const/4 v6, 0x3

    invoke-direct {v1, v14, v15, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "SubjectLocation"

    move-object/from16 v81, v1

    const v1, 0xa214

    invoke-direct {v14, v15, v1, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v15, "ExposureIndex"

    const v6, 0xa215

    move-object/from16 v82, v14

    const/4 v14, 0x5

    invoke-direct {v1, v15, v6, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v14, "SensingMethod"

    const v15, 0xa217

    move-object/from16 v83, v1

    const/4 v1, 0x3

    invoke-direct {v6, v14, v15, v1}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v14, "FileSource"

    const v15, 0xa300

    move-object/from16 v84, v6

    const/4 v6, 0x7

    invoke-direct {v1, v14, v15, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "SceneType"

    move-object/from16 v85, v1

    const v1, 0xa301

    invoke-direct {v14, v15, v1, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v15, "CFAPattern"

    move-object/from16 v86, v14

    const v14, 0xa302

    invoke-direct {v1, v15, v14, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v14, "CustomRendered"

    const v15, 0xa401

    move-object/from16 v87, v1

    const/4 v1, 0x3

    invoke-direct {v6, v14, v15, v1}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "ExposureMode"

    move-object/from16 v88, v6

    const v6, 0xa402

    invoke-direct {v14, v15, v6, v1}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v15, "WhiteBalance"

    move-object/from16 v89, v14

    const v14, 0xa403

    invoke-direct {v6, v15, v14, v1}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "DigitalZoomRatio"

    const v1, 0xa404

    move-object/from16 v90, v6

    const/4 v6, 0x5

    invoke-direct {v14, v15, v1, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v6, "FocalLengthIn35mmFilm"

    const v15, 0xa405

    move-object/from16 v91, v14

    const/4 v14, 0x3

    invoke-direct {v1, v6, v15, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v15, "SceneCaptureType"

    move-object/from16 v92, v1

    const v1, 0xa406

    invoke-direct {v6, v15, v1, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v15, "GainControl"

    move-object/from16 v93, v6

    const v6, 0xa407

    invoke-direct {v1, v15, v6, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v15, "Contrast"

    move-object/from16 v94, v1

    const v1, 0xa408

    invoke-direct {v6, v15, v1, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v15, "Saturation"

    move-object/from16 v95, v6

    const v6, 0xa409

    invoke-direct {v1, v15, v6, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v15, "Sharpness"

    move-object/from16 v96, v1

    const v1, 0xa40a

    invoke-direct {v6, v15, v1, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v15, "DeviceSettingDescription"

    const v14, 0xa40b

    move-object/from16 v97, v6

    const/4 v6, 0x7

    invoke-direct {v1, v15, v14, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v14, "SubjectDistanceRange"

    const v15, 0xa40c

    move-object/from16 v98, v1

    const/4 v1, 0x3

    invoke-direct {v6, v14, v15, v1}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v14, "ImageUniqueID"

    const v15, 0xa420

    move-object/from16 v99, v6

    const/4 v6, 0x2

    invoke-direct {v1, v14, v15, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "CameraOwnerName"

    move-object/from16 v100, v1

    const v1, 0xa430

    invoke-direct {v14, v15, v1, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v15, "BodySerialNumber"

    move-object/from16 v101, v14

    const v14, 0xa431

    invoke-direct {v1, v15, v14, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "LensSpecification"

    const v6, 0xa432

    move-object/from16 v102, v1

    const/4 v1, 0x5

    invoke-direct {v14, v15, v6, v1}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v6, "LensMake"

    const v15, 0xa433

    move-object/from16 v103, v14

    const/4 v14, 0x2

    invoke-direct {v1, v6, v15, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v15, "LensModel"

    move-object/from16 v104, v1

    const v1, 0xa434

    invoke-direct {v6, v15, v1, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v14, "Gamma"

    const v15, 0xa500

    move-object/from16 v105, v6

    const/4 v6, 0x5

    invoke-direct {v1, v14, v15, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v14, "DNGVersion"

    const v15, 0xc612

    move-object/from16 v106, v1

    const/4 v1, 0x1

    invoke-direct {v6, v14, v15, v1}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "DefaultCropSize"

    const v1, 0xc620

    move-object/from16 v108, v0

    move-object/from16 v107, v6

    const/4 v0, 0x4

    const/4 v6, 0x3

    invoke-direct {v14, v15, v1, v6, v0}, Lj1/d;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0x4a

    new-array v1, v1, [Lj1/d;

    const/4 v15, 0x0

    aput-object v4, v1, v15

    const/4 v4, 0x1

    aput-object v5, v1, v4

    const/4 v4, 0x2

    aput-object v7, v1, v4

    aput-object v8, v1, v6

    aput-object v9, v1, v0

    const/4 v0, 0x5

    aput-object v11, v1, v0

    const/4 v0, 0x6

    aput-object v12, v1, v0

    const/4 v0, 0x7

    aput-object v10, v1, v0

    const/16 v0, 0x8

    aput-object v13, v1, v0

    const/16 v0, 0x9

    aput-object v3, v1, v0

    const/16 v0, 0xa

    aput-object v2, v1, v0

    const/16 v0, 0xb

    aput-object v73, v1, v0

    const/16 v0, 0xc

    aput-object v44, v1, v0

    const/16 v0, 0xd

    aput-object v45, v1, v0

    const/16 v0, 0xe

    aput-object v46, v1, v0

    const/16 v0, 0xf

    aput-object v47, v1, v0

    const/16 v0, 0x10

    aput-object v48, v1, v0

    const/16 v0, 0x11

    aput-object v49, v1, v0

    const/16 v0, 0x12

    aput-object v50, v1, v0

    const/16 v0, 0x13

    aput-object v51, v1, v0

    const/16 v0, 0x14

    aput-object v53, v1, v0

    const/16 v0, 0x15

    aput-object v54, v1, v0

    const/16 v0, 0x16

    aput-object v55, v1, v0

    const/16 v0, 0x17

    aput-object v56, v1, v0

    const/16 v0, 0x18

    aput-object v57, v1, v0

    const/16 v0, 0x19

    aput-object v58, v1, v0

    const/16 v0, 0x1a

    aput-object v59, v1, v0

    const/16 v0, 0x1b

    aput-object v60, v1, v0

    const/16 v0, 0x1c

    aput-object v62, v1, v0

    const/16 v0, 0x1d

    aput-object v64, v1, v0

    const/16 v0, 0x1e

    aput-object v65, v1, v0

    const/16 v0, 0x1f

    aput-object v66, v1, v0

    const/16 v0, 0x20

    aput-object v67, v1, v0

    const/16 v0, 0x21

    aput-object v68, v1, v0

    const/16 v0, 0x22

    aput-object v69, v1, v0

    const/16 v0, 0x23

    aput-object v70, v1, v0

    const/16 v0, 0x24

    aput-object v71, v1, v0

    const/16 v0, 0x25

    aput-object v72, v1, v0

    const/16 v0, 0x26

    aput-object v74, v1, v0

    const/16 v0, 0x27

    aput-object v108, v1, v0

    const/16 v0, 0x28

    aput-object v75, v1, v0

    const/16 v0, 0x29

    aput-object v76, v1, v0

    const/16 v0, 0x2a

    aput-object v77, v1, v0

    const/16 v0, 0x2b

    aput-object v78, v1, v0

    const/16 v0, 0x2c

    aput-object v79, v1, v0

    const/16 v0, 0x2d

    aput-object v80, v1, v0

    const/16 v0, 0x2e

    aput-object v81, v1, v0

    const/16 v0, 0x2f

    aput-object v82, v1, v0

    const/16 v0, 0x30

    aput-object v83, v1, v0

    const/16 v0, 0x31

    aput-object v84, v1, v0

    const/16 v0, 0x32

    aput-object v85, v1, v0

    const/16 v0, 0x33

    aput-object v86, v1, v0

    const/16 v0, 0x34

    aput-object v87, v1, v0

    const/16 v0, 0x35

    aput-object v88, v1, v0

    const/16 v0, 0x36

    aput-object v89, v1, v0

    const/16 v0, 0x37

    aput-object v90, v1, v0

    const/16 v0, 0x38

    aput-object v91, v1, v0

    const/16 v0, 0x39

    aput-object v92, v1, v0

    const/16 v0, 0x3a

    aput-object v93, v1, v0

    const/16 v0, 0x3b

    aput-object v94, v1, v0

    const/16 v0, 0x3c

    aput-object v95, v1, v0

    const/16 v0, 0x3d

    aput-object v96, v1, v0

    const/16 v0, 0x3e

    aput-object v97, v1, v0

    const/16 v0, 0x3f

    aput-object v98, v1, v0

    const/16 v0, 0x40

    aput-object v99, v1, v0

    const/16 v0, 0x41

    aput-object v100, v1, v0

    const/16 v0, 0x42

    aput-object v101, v1, v0

    const/16 v0, 0x43

    aput-object v102, v1, v0

    const/16 v0, 0x44

    aput-object v103, v1, v0

    const/16 v0, 0x45

    aput-object v104, v1, v0

    const/16 v0, 0x46

    aput-object v105, v1, v0

    const/16 v0, 0x47

    aput-object v106, v1, v0

    const/16 v0, 0x48

    aput-object v107, v1, v0

    const/16 v0, 0x49

    aput-object v14, v1, v0

    .line 34
    new-instance v0, Lj1/d;

    const-string v2, "GPSVersionID"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lj1/d;

    const-string v4, "GPSLatitudeRef"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v3, v5}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lj1/d;

    const-string v4, "GPSLatitude"

    const/4 v6, 0x5

    const/16 v7, 0xa

    invoke-direct {v3, v4, v5, v6, v7}, Lj1/d;-><init>(Ljava/lang/String;III)V

    new-instance v4, Lj1/d;

    const-string v8, "GPSLongitudeRef"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v5}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lj1/d;

    const-string v8, "GPSLongitude"

    const/4 v9, 0x4

    invoke-direct {v5, v8, v9, v6, v7}, Lj1/d;-><init>(Ljava/lang/String;III)V

    new-instance v7, Lj1/d;

    const-string v8, "GPSAltitudeRef"

    const/4 v9, 0x1

    invoke-direct {v7, v8, v6, v9}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lj1/d;

    const-string v9, "GPSAltitude"

    const/4 v10, 0x6

    invoke-direct {v8, v9, v10, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lj1/d;

    const-string v10, "GPSTimeStamp"

    const/4 v11, 0x7

    invoke-direct {v9, v10, v11, v6}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v10, "GPSSatellites"

    const/16 v11, 0x8

    const/4 v12, 0x2

    invoke-direct {v6, v10, v11, v12}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lj1/d;

    const-string v11, "GPSStatus"

    const/16 v13, 0x9

    invoke-direct {v10, v11, v13, v12}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lj1/d;

    const-string v13, "GPSMeasureMode"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14, v12}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lj1/d;

    const-string v14, "GPSDOP"

    const/16 v12, 0xb

    const/4 v15, 0x5

    invoke-direct {v13, v14, v12, v15}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lj1/d;

    const-string v14, "GPSSpeedRef"

    move-object/from16 v17, v1

    const/16 v1, 0xc

    const/4 v15, 0x2

    invoke-direct {v12, v14, v1, v15}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v14, "GPSSpeed"

    move-object/from16 v44, v12

    const/16 v12, 0xd

    const/4 v15, 0x5

    invoke-direct {v1, v14, v12, v15}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lj1/d;

    const-string v14, "GPSTrackRef"

    move-object/from16 v45, v1

    const/16 v1, 0xe

    const/4 v15, 0x2

    invoke-direct {v12, v14, v1, v15}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v14, "GPSTrack"

    move-object/from16 v46, v12

    const/16 v12, 0xf

    const/4 v15, 0x5

    invoke-direct {v1, v14, v12, v15}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lj1/d;

    const-string v14, "GPSImgDirectionRef"

    move-object/from16 v47, v1

    const/16 v1, 0x10

    const/4 v15, 0x2

    invoke-direct {v12, v14, v1, v15}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v14, "GPSImgDirection"

    move-object/from16 v48, v12

    const/16 v12, 0x11

    const/4 v15, 0x5

    invoke-direct {v1, v14, v12, v15}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lj1/d;

    const-string v14, "GPSMapDatum"

    move-object/from16 v49, v1

    const/16 v1, 0x12

    const/4 v15, 0x2

    invoke-direct {v12, v14, v1, v15}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v14, "GPSDestLatitudeRef"

    move-object/from16 v50, v12

    const/16 v12, 0x13

    invoke-direct {v1, v14, v12, v15}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lj1/d;

    const-string v14, "GPSDestLatitude"

    const/16 v15, 0x14

    move-object/from16 v51, v1

    const/4 v1, 0x5

    invoke-direct {v12, v14, v15, v1}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "GPSDestLongitudeRef"

    const/16 v1, 0x15

    move-object/from16 v53, v12

    const/4 v12, 0x2

    invoke-direct {v14, v15, v1, v12}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v15, "GPSDestLongitude"

    const/16 v12, 0x16

    move-object/from16 v54, v14

    const/4 v14, 0x5

    invoke-direct {v1, v15, v12, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lj1/d;

    const-string v15, "GPSDestBearingRef"

    move-object/from16 v55, v1

    const/4 v1, 0x2

    const/16 v14, 0x17

    invoke-direct {v12, v15, v14, v1}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "GPSDestBearing"

    const/16 v1, 0x18

    move-object/from16 v56, v12

    const/4 v12, 0x5

    invoke-direct {v14, v15, v1, v12}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v15, "GPSDestDistanceRef"

    const/16 v12, 0x19

    move-object/from16 v57, v14

    const/4 v14, 0x2

    invoke-direct {v1, v15, v12, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lj1/d;

    const-string v14, "GPSDestDistance"

    move-object/from16 v58, v1

    const/16 v1, 0x1a

    const/4 v15, 0x5

    invoke-direct {v12, v14, v1, v15}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v14, "GPSProcessingMethod"

    const/16 v15, 0x1b

    move-object/from16 v59, v12

    const/4 v12, 0x7

    invoke-direct {v1, v14, v15, v12}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "GPSAreaInformation"

    move-object/from16 v60, v1

    const/16 v1, 0x1c

    invoke-direct {v14, v15, v1, v12}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v12, "GPSDateStamp"

    const/16 v15, 0x1d

    move-object/from16 v62, v14

    const/4 v14, 0x2

    invoke-direct {v1, v12, v15, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lj1/d;

    const-string v14, "GPSDifferential"

    const/16 v15, 0x1e

    move-object/from16 v64, v1

    const/4 v1, 0x3

    invoke-direct {v12, v14, v15, v1}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "GPSHPositioningError"

    const/16 v1, 0x1f

    move-object/from16 v65, v12

    const/4 v12, 0x5

    invoke-direct {v14, v15, v1, v12}, Lj1/d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x20

    new-array v1, v1, [Lj1/d;

    const/4 v15, 0x0

    aput-object v0, v1, v15

    const/4 v0, 0x1

    aput-object v2, v1, v0

    const/4 v0, 0x2

    aput-object v3, v1, v0

    const/4 v0, 0x3

    aput-object v4, v1, v0

    const/4 v0, 0x4

    aput-object v5, v1, v0

    aput-object v7, v1, v12

    const/4 v0, 0x6

    aput-object v8, v1, v0

    const/4 v0, 0x7

    aput-object v9, v1, v0

    const/16 v0, 0x8

    aput-object v6, v1, v0

    const/16 v0, 0x9

    aput-object v10, v1, v0

    const/16 v0, 0xa

    aput-object v11, v1, v0

    const/16 v0, 0xb

    aput-object v13, v1, v0

    const/16 v0, 0xc

    aput-object v44, v1, v0

    const/16 v0, 0xd

    aput-object v45, v1, v0

    const/16 v0, 0xe

    aput-object v46, v1, v0

    const/16 v0, 0xf

    aput-object v47, v1, v0

    const/16 v0, 0x10

    aput-object v48, v1, v0

    const/16 v0, 0x11

    aput-object v49, v1, v0

    const/16 v0, 0x12

    aput-object v50, v1, v0

    const/16 v0, 0x13

    aput-object v51, v1, v0

    const/16 v0, 0x14

    aput-object v53, v1, v0

    const/16 v0, 0x15

    aput-object v54, v1, v0

    const/16 v0, 0x16

    aput-object v55, v1, v0

    const/16 v0, 0x17

    aput-object v56, v1, v0

    const/16 v0, 0x18

    aput-object v57, v1, v0

    const/16 v0, 0x19

    aput-object v58, v1, v0

    const/16 v0, 0x1a

    aput-object v59, v1, v0

    const/16 v0, 0x1b

    aput-object v60, v1, v0

    const/16 v0, 0x1c

    aput-object v62, v1, v0

    const/16 v0, 0x1d

    aput-object v64, v1, v0

    const/16 v0, 0x1e

    aput-object v65, v1, v0

    const/16 v0, 0x1f

    aput-object v14, v1, v0

    .line 35
    new-instance v0, Lj1/d;

    const-string v2, "InteroperabilityIndex"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-array v2, v3, [Lj1/d;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 36
    new-instance v0, Lj1/d;

    move-object/from16 v3, v38

    const/16 v4, 0xfe

    const/4 v5, 0x4

    invoke-direct {v0, v3, v4, v5}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lj1/d;

    move-object/from16 v4, v36

    const/16 v6, 0xff

    invoke-direct {v3, v4, v6, v5}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lj1/d;

    const-string v6, "ThumbnailImageWidth"

    const/4 v7, 0x3

    const/16 v8, 0x100

    invoke-direct {v4, v6, v8, v7, v5}, Lj1/d;-><init>(Ljava/lang/String;III)V

    new-instance v6, Lj1/d;

    const-string v8, "ThumbnailImageLength"

    const/16 v9, 0x101

    invoke-direct {v6, v8, v9, v7, v5}, Lj1/d;-><init>(Ljava/lang/String;III)V

    new-instance v5, Lj1/d;

    move-object/from16 v8, v35

    const/16 v9, 0x102

    invoke-direct {v5, v8, v9, v7}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lj1/d;

    move-object/from16 v9, v34

    const/16 v10, 0x103

    invoke-direct {v8, v9, v10, v7}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lj1/d;

    move-object/from16 v10, v33

    const/16 v11, 0x106

    invoke-direct {v9, v10, v11, v7}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lj1/d;

    move-object/from16 v10, v32

    const/16 v11, 0x10e

    const/4 v12, 0x2

    invoke-direct {v7, v10, v11, v12}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lj1/d;

    const-string v11, "Make"

    const/16 v13, 0x10f

    invoke-direct {v10, v11, v13, v12}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lj1/d;

    const-string v13, "Model"

    const/16 v14, 0x110

    invoke-direct {v11, v13, v14, v12}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lj1/d;

    move-object/from16 v21, v2

    move-object/from16 v14, v37

    const/4 v2, 0x4

    const/4 v13, 0x3

    const/16 v15, 0x111

    invoke-direct {v12, v14, v15, v13, v2}, Lj1/d;-><init>(Ljava/lang/String;III)V

    new-instance v2, Lj1/d;

    const-string v15, "ThumbnailOrientation"

    move-object/from16 v22, v1

    const/16 v1, 0x112

    invoke-direct {v2, v15, v1, v13}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v15, "SamplesPerPixel"

    const/16 v14, 0x115

    invoke-direct {v1, v15, v14, v13}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "RowsPerStrip"

    move-object/from16 v25, v1

    const/16 v1, 0x116

    move-object/from16 v28, v2

    const/4 v2, 0x4

    invoke-direct {v14, v15, v1, v13, v2}, Lj1/d;-><init>(Ljava/lang/String;III)V

    new-instance v1, Lj1/d;

    const-string v15, "StripByteCounts"

    move-object/from16 v31, v14

    const/16 v14, 0x117

    invoke-direct {v1, v15, v14, v13, v2}, Lj1/d;-><init>(Ljava/lang/String;III)V

    new-instance v2, Lj1/d;

    const-string v13, "XResolution"

    const/16 v14, 0x11a

    const/4 v15, 0x5

    invoke-direct {v2, v13, v14, v15}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lj1/d;

    const-string v14, "YResolution"

    move-object/from16 v32, v2

    const/16 v2, 0x11b

    invoke-direct {v13, v14, v2, v15}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lj1/d;

    const-string v14, "PlanarConfiguration"

    const/16 v15, 0x11c

    move-object/from16 v33, v13

    const/4 v13, 0x3

    invoke-direct {v2, v14, v15, v13}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "ResolutionUnit"

    move-object/from16 v34, v2

    const/16 v2, 0x128

    invoke-direct {v14, v15, v2, v13}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lj1/d;

    const-string v15, "TransferFunction"

    move-object/from16 v35, v14

    const/16 v14, 0x12d

    invoke-direct {v2, v15, v14, v13}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lj1/d;

    const-string v14, "Software"

    const/16 v15, 0x131

    move-object/from16 v36, v2

    const/4 v2, 0x2

    invoke-direct {v13, v14, v15, v2}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "DateTime"

    move-object/from16 v38, v13

    const/16 v13, 0x132

    invoke-direct {v14, v15, v13, v2}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lj1/d;

    const-string v15, "Artist"

    move-object/from16 v44, v14

    const/16 v14, 0x13b

    invoke-direct {v13, v15, v14, v2}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lj1/d;

    const-string v14, "WhitePoint"

    const/16 v15, 0x13e

    move-object/from16 v45, v13

    const/4 v13, 0x5

    invoke-direct {v2, v14, v15, v13}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "PrimaryChromaticities"

    move-object/from16 v46, v2

    const/16 v2, 0x13f

    invoke-direct {v14, v15, v2, v13}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lj1/d;

    move-object/from16 v47, v14

    move-object/from16 v13, v52

    const/4 v14, 0x4

    const/16 v15, 0x14a

    invoke-direct {v2, v13, v15, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lj1/d;

    const-string v13, "JPEGInterchangeFormat"

    move-object/from16 v48, v2

    const/16 v2, 0x201

    invoke-direct {v15, v13, v2, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lj1/d;

    const-string v13, "JPEGInterchangeFormatLength"

    move-object/from16 v49, v15

    const/16 v15, 0x202

    invoke-direct {v2, v13, v15, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lj1/d;

    const-string v14, "YCbCrCoefficients"

    const/16 v15, 0x211

    move-object/from16 v50, v2

    const/4 v2, 0x5

    invoke-direct {v13, v14, v15, v2}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lj1/d;

    const-string v14, "YCbCrSubSampling"

    const/16 v15, 0x212

    move-object/from16 v51, v13

    const/4 v13, 0x3

    invoke-direct {v2, v14, v15, v13}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lj1/d;

    const-string v15, "YCbCrPositioning"

    move-object/from16 v53, v2

    const/16 v2, 0x213

    invoke-direct {v14, v15, v2, v13}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lj1/d;

    const-string v13, "ReferenceBlackWhite"

    const/16 v15, 0x214

    move-object/from16 v54, v14

    const/4 v14, 0x5

    invoke-direct {v2, v13, v15, v14}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lj1/d;

    const-string v14, "Copyright"

    const v15, 0x8298

    move-object/from16 v55, v2

    const/4 v2, 0x2

    invoke-direct {v13, v14, v15, v2}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lj1/d;

    move-object/from16 v56, v13

    move-object/from16 v14, v61

    const/4 v13, 0x4

    const v15, 0x8769

    invoke-direct {v2, v14, v15, v13}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lj1/d;

    move-object/from16 v57, v2

    move-object/from16 v14, v63

    const v2, 0x8825

    invoke-direct {v15, v14, v2, v13}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lj1/d;

    const-string v13, "DNGVersion"

    const v14, 0xc612

    move-object/from16 v58, v15

    const/4 v15, 0x1

    invoke-direct {v2, v13, v14, v15}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lj1/d;

    const-string v14, "DefaultCropSize"

    const v15, 0xc620

    move-object/from16 v60, v1

    move-object/from16 v59, v2

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-direct {v13, v14, v15, v2, v1}, Lj1/d;-><init>(Ljava/lang/String;III)V

    const/16 v14, 0x25

    new-array v14, v14, [Lj1/d;

    const/4 v15, 0x0

    aput-object v0, v14, v15

    const/4 v0, 0x1

    aput-object v3, v14, v0

    const/4 v0, 0x2

    aput-object v4, v14, v0

    aput-object v6, v14, v2

    aput-object v5, v14, v1

    const/4 v0, 0x5

    aput-object v8, v14, v0

    const/4 v0, 0x6

    aput-object v9, v14, v0

    const/4 v0, 0x7

    aput-object v7, v14, v0

    const/16 v0, 0x8

    aput-object v10, v14, v0

    const/16 v0, 0x9

    aput-object v11, v14, v0

    const/16 v0, 0xa

    aput-object v12, v14, v0

    const/16 v0, 0xb

    aput-object v28, v14, v0

    const/16 v0, 0xc

    aput-object v25, v14, v0

    const/16 v0, 0xd

    aput-object v31, v14, v0

    const/16 v0, 0xe

    aput-object v60, v14, v0

    const/16 v0, 0xf

    aput-object v32, v14, v0

    const/16 v0, 0x10

    aput-object v33, v14, v0

    const/16 v0, 0x11

    aput-object v34, v14, v0

    const/16 v0, 0x12

    aput-object v35, v14, v0

    const/16 v0, 0x13

    aput-object v36, v14, v0

    const/16 v0, 0x14

    aput-object v38, v14, v0

    const/16 v0, 0x15

    aput-object v44, v14, v0

    const/16 v0, 0x16

    aput-object v45, v14, v0

    const/16 v0, 0x17

    aput-object v46, v14, v0

    const/16 v0, 0x18

    aput-object v47, v14, v0

    const/16 v0, 0x19

    aput-object v48, v14, v0

    const/16 v0, 0x1a

    aput-object v49, v14, v0

    const/16 v0, 0x1b

    aput-object v50, v14, v0

    const/16 v0, 0x1c

    aput-object v51, v14, v0

    const/16 v0, 0x1d

    aput-object v53, v14, v0

    const/16 v0, 0x1e

    aput-object v54, v14, v0

    const/16 v0, 0x1f

    aput-object v55, v14, v0

    const/16 v0, 0x20

    aput-object v56, v14, v0

    const/16 v0, 0x21

    aput-object v57, v14, v0

    const/16 v0, 0x22

    aput-object v58, v14, v0

    const/16 v0, 0x23

    aput-object v59, v14, v0

    const/16 v0, 0x24

    aput-object v13, v14, v0

    .line 37
    new-instance v0, Lj1/d;

    move-object/from16 v2, v37

    const/4 v1, 0x3

    const/16 v3, 0x111

    invoke-direct {v0, v2, v3, v1}, Lj1/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lj1/g;->F:Lj1/d;

    .line 38
    new-instance v0, Lj1/d;

    const-string v1, "ThumbnailImage"

    const/4 v2, 0x7

    const/16 v3, 0x100

    invoke-direct {v0, v1, v3, v2}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lj1/d;

    const-string v2, "CameraSettingsIFDPointer"

    const/16 v3, 0x2020

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lj1/d;

    const-string v3, "ImageProcessingIFDPointer"

    const/16 v5, 0x2040

    invoke-direct {v2, v3, v5, v4}, Lj1/d;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x3

    new-array v5, v3, [Lj1/d;

    const/4 v3, 0x0

    aput-object v0, v5, v3

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v1, 0x2

    aput-object v2, v5, v1

    .line 39
    new-instance v2, Lj1/d;

    const-string v6, "PreviewImageStart"

    const/16 v7, 0x101

    invoke-direct {v2, v6, v7, v4}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lj1/d;

    const-string v7, "PreviewImageLength"

    const/16 v8, 0x102

    invoke-direct {v6, v7, v8, v4}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-array v4, v1, [Lj1/d;

    aput-object v2, v4, v3

    aput-object v6, v4, v0

    .line 40
    new-instance v1, Lj1/d;

    const-string v2, "AspectFrame"

    const/16 v6, 0x1113

    const/4 v7, 0x3

    invoke-direct {v1, v2, v6, v7}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-array v2, v0, [Lj1/d;

    aput-object v1, v2, v3

    .line 41
    new-instance v1, Lj1/d;

    const-string v6, "ColorSpace"

    const/16 v8, 0x37

    invoke-direct {v1, v6, v8, v7}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-array v6, v0, [Lj1/d;

    aput-object v1, v6, v3

    const/16 v1, 0xa

    .line 42
    new-array v8, v1, [[Lj1/d;

    aput-object v43, v8, v3

    aput-object v17, v8, v0

    const/4 v0, 0x2

    aput-object v22, v8, v0

    aput-object v21, v8, v7

    const/4 v0, 0x4

    aput-object v14, v8, v0

    const/4 v1, 0x5

    aput-object v43, v8, v1

    const/4 v1, 0x6

    aput-object v5, v8, v1

    const/4 v1, 0x7

    aput-object v4, v8, v1

    const/16 v1, 0x8

    aput-object v2, v8, v1

    const/16 v1, 0x9

    aput-object v6, v8, v1

    sput-object v8, Lj1/g;->G:[[Lj1/d;

    .line 43
    new-instance v1, Lj1/d;

    move-object/from16 v2, v52

    const/16 v3, 0x14a

    invoke-direct {v1, v2, v3, v0}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lj1/d;

    move-object/from16 v3, v61

    const v4, 0x8769

    invoke-direct {v2, v3, v4, v0}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lj1/d;

    move-object/from16 v4, v63

    const v5, 0x8825

    invoke-direct {v3, v4, v5, v0}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lj1/d;

    const-string v5, "InteroperabilityIFDPointer"

    const v6, 0xa005

    invoke-direct {v4, v5, v6, v0}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lj1/d;

    const-string v5, "CameraSettingsIFDPointer"

    const/16 v6, 0x2020

    const/4 v7, 0x1

    invoke-direct {v0, v5, v6, v7}, Lj1/d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lj1/d;

    const-string v6, "ImageProcessingIFDPointer"

    const/16 v8, 0x2040

    invoke-direct {v5, v6, v8, v7}, Lj1/d;-><init>(Ljava/lang/String;II)V

    const/4 v6, 0x6

    new-array v6, v6, [Lj1/d;

    const/4 v8, 0x0

    aput-object v1, v6, v8

    aput-object v2, v6, v7

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v4, v6, v1

    const/4 v1, 0x4

    aput-object v0, v6, v1

    const/4 v0, 0x5

    aput-object v5, v6, v0

    sput-object v6, Lj1/g;->H:[Lj1/d;

    const/16 v1, 0xa

    .line 44
    new-array v2, v1, [Ljava/util/HashMap;

    sput-object v2, Lj1/g;->I:[Ljava/util/HashMap;

    .line 45
    new-array v1, v1, [Ljava/util/HashMap;

    sput-object v1, Lj1/g;->J:[Ljava/util/HashMap;

    .line 46
    new-instance v1, Ljava/util/HashSet;

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "FNumber"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "DigitalZoomRatio"

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "ExposureTime"

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v0, "SubjectDistance"

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const-string v0, "GPSTimeStamp"

    const/4 v3, 0x4

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lj1/g;->K:Ljava/util/HashSet;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lj1/g;->L:Ljava/util/HashMap;

    .line 48
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lj1/g;->M:Ljava/nio/charset/Charset;

    .line 49
    const-string v1, "Exif\u0000\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lj1/g;->N:[B

    .line 50
    const-string v1, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lj1/g;->O:[B

    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 53
    const-string v2, "UTC"

    invoke-static {v2}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 55
    const-string v1, "UTC"

    invoke-static {v1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v15, 0x0

    .line 56
    :goto_0
    sget-object v0, Lj1/g;->G:[[Lj1/d;

    array-length v1, v0

    if-ge v15, v1, :cond_1

    .line 57
    sget-object v1, Lj1/g;->I:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v15

    .line 58
    sget-object v1, Lj1/g;->J:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v15

    .line 59
    aget-object v0, v0, v15

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 60
    sget-object v4, Lj1/g;->I:[Ljava/util/HashMap;

    aget-object v4, v4, v15

    iget v5, v3, Lj1/d;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v4, Lj1/g;->J:[Ljava/util/HashMap;

    aget-object v4, v4, v15

    iget-object v5, v3, Lj1/d;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    add-int/2addr v15, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 62
    sget-object v0, Lj1/g;->L:Ljava/util/HashMap;

    sget-object v1, Lj1/g;->H:[Lj1/d;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget v2, v2, Lj1/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v4, v30

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    aget-object v2, v1, v3

    iget v2, v2, Lj1/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v29

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 64
    aget-object v2, v1, v2

    iget v2, v2, Lj1/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v27

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    .line 65
    aget-object v2, v1, v2

    iget v2, v2, Lj1/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v26

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    .line 66
    aget-object v2, v1, v2

    iget v2, v2, Lj1/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v24

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 67
    aget-object v1, v1, v2

    iget v1, v1, Lj1/d;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 69
    const-string v0, "^(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 70
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 71
    const-string v0, "^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 72
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 73
    const-string v0, "^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 74
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_4
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_6
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_7
    .array-data 1
        0x65t
        0x58t
        0x49t
        0x66t
    .end array-data

    :array_8
    .array-data 1
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    :array_9
    .array-data 1
        0x49t
        0x45t
        0x4et
        0x44t
    .end array-data

    :array_a
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_b
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_c
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_e
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lj1/g;->G:[[Lj1/d;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Lj1/g;->e:[Ljava/util/HashMap;

    .line 22
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lj1/g;->f:Ljava/util/HashSet;

    .line 23
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lj1/g;->a:Ljava/lang/String;

    .line 25
    instance-of v1, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v1, :cond_0

    .line 26
    move-object v1, p1

    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v1, p0, Lj1/g;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 27
    iput-object v0, p0, Lj1/g;->b:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 28
    :cond_0
    instance-of v1, p1, Ljava/io/FileInputStream;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/io/FileInputStream;

    .line 29
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 30
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 31
    :try_start_0
    invoke-static {}, Lg7/d;->d()I

    move-result v3

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5, v3}, Lj1/h;->c(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    iput-object v0, p0, Lj1/g;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 33
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lj1/g;->b:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 34
    :catch_0
    :cond_1
    iput-object v0, p0, Lj1/g;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 35
    iput-object v0, p0, Lj1/g;->b:Ljava/io/FileDescriptor;

    .line 36
    :goto_0
    invoke-virtual {p0, p1}, Lj1/g;->p(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lj1/g;->G:[[Lj1/d;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Lj1/g;->e:[Ljava/util/HashMap;

    .line 3
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lj1/g;->f:Ljava/util/HashSet;

    .line 4
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lj1/g;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 6
    iput-object p1, p0, Lj1/g;->a:Ljava/lang/String;

    .line 7
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    .line 10
    :try_start_2
    invoke-static {}, Lg7/d;->d()I

    move-result v2

    const-wide/16 v5, 0x0

    invoke-static {p1, v5, v6, v2}, Lj1/h;->c(Ljava/io/FileDescriptor;JI)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 11
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lj1/g;->b:Ljava/io/FileDescriptor;

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    .line 12
    :cond_1
    iput-object v0, p0, Lj1/g;->b:Ljava/io/FileDescriptor;

    .line 13
    :goto_1
    invoke-virtual {p0, v1}, Lj1/g;->p(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :try_start_4
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-void

    :catch_2
    move-exception p1

    .line 15
    throw p1

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v0, :cond_2

    .line 16
    :try_start_5
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_3
    move-exception p1

    .line 17
    throw p1

    .line 18
    :catch_4
    :cond_2
    :goto_3
    throw p1

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "filename cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static s(Lj1/b;)Ljava/nio/ByteOrder;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lj1/b;->readShort()S

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x4949

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x4d4d

    .line 10
    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "Invalid byte order: "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v1}, Lg/b;->e(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 34
    .line 35
    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    const-string v0, "DateTimeOriginal"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lj1/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lj1/g;->e:[Ljava/util/HashMap;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v3, "DateTime"

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Lj1/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    aget-object v4, v1, v2

    .line 21
    .line 22
    const-string v5, "\u0000"

    .line 23
    .line 24
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v5, Lj1/g;->M:Ljava/nio/charset/Charset;

    .line 29
    .line 30
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v5, Lj1/c;

    .line 35
    .line 36
    array-length v6, v0

    .line 37
    const/4 v7, 0x2

    .line 38
    invoke-direct {v5, v7, v6, v0}, Lj1/c;-><init>(II[B)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_0
    const-string v0, "ImageWidth"

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lj1/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-wide/16 v4, 0x0

    .line 51
    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    aget-object v3, v1, v2

    .line 55
    .line 56
    iget-object v6, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 57
    .line 58
    invoke-static {v4, v5, v6}, Lj1/c;->a(JLjava/nio/ByteOrder;)Lj1/c;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_1
    const-string v0, "ImageLength"

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lj1/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-nez v3, :cond_2

    .line 72
    .line 73
    aget-object v3, v1, v2

    .line 74
    .line 75
    iget-object v6, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 76
    .line 77
    invoke-static {v4, v5, v6}, Lj1/c;->a(JLjava/nio/ByteOrder;)Lj1/c;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    :cond_2
    const-string v0, "Orientation"

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lj1/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-nez v3, :cond_3

    .line 91
    .line 92
    aget-object v2, v1, v2

    .line 93
    .line 94
    iget-object v3, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 95
    .line 96
    invoke-static {v4, v5, v3}, Lj1/c;->a(JLjava/nio/ByteOrder;)Lj1/c;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    :cond_3
    const-string v0, "LightSource"

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lj1/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    if-nez v2, :cond_4

    .line 110
    .line 111
    const/4 v2, 0x1

    .line 112
    aget-object v1, v1, v2

    .line 113
    .line 114
    iget-object v2, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 115
    .line 116
    invoke-static {v4, v5, v2}, Lj1/c;->a(JLjava/nio/ByteOrder;)Lj1/c;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    :cond_4
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x3

    .line 5
    invoke-virtual {p0, p1}, Lj1/g;->d(Ljava/lang/String;)Lj1/c;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    const/4 v5, 0x0

    .line 10
    if-eqz v4, :cond_5

    .line 11
    .line 12
    sget-object v6, Lj1/g;->K:Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    if-nez v6, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 21
    .line 22
    invoke-virtual {v4, p1}, Lj1/c;->f(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    const-string v6, "GPSTimeStamp"

    .line 28
    .line 29
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    const/4 p1, 0x5

    .line 36
    iget v6, v4, Lj1/c;->a:I

    .line 37
    .line 38
    if-eq v6, p1, :cond_1

    .line 39
    .line 40
    const/16 p1, 0xa

    .line 41
    .line 42
    if-eq v6, p1, :cond_1

    .line 43
    .line 44
    return-object v5

    .line 45
    :cond_1
    iget-object p1, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 46
    .line 47
    invoke-virtual {v4, p1}, Lj1/c;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, [Lj1/e;

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    array-length v4, p1

    .line 56
    if-eq v4, v3, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    aget-object v4, p1, v2

    .line 60
    .line 61
    iget-wide v5, v4, Lj1/e;->a:J

    .line 62
    .line 63
    long-to-float v5, v5

    .line 64
    iget-wide v6, v4, Lj1/e;->b:J

    .line 65
    .line 66
    long-to-float v4, v6

    .line 67
    div-float/2addr v5, v4

    .line 68
    float-to-int v4, v5

    .line 69
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    aget-object v5, p1, v1

    .line 74
    .line 75
    iget-wide v6, v5, Lj1/e;->a:J

    .line 76
    .line 77
    long-to-float v6, v6

    .line 78
    iget-wide v7, v5, Lj1/e;->b:J

    .line 79
    .line 80
    long-to-float v5, v7

    .line 81
    div-float/2addr v6, v5

    .line 82
    float-to-int v5, v6

    .line 83
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    aget-object p1, p1, v0

    .line 88
    .line 89
    iget-wide v6, p1, Lj1/e;->a:J

    .line 90
    .line 91
    long-to-float v6, v6

    .line 92
    iget-wide v7, p1, Lj1/e;->b:J

    .line 93
    .line 94
    long-to-float p1, v7

    .line 95
    div-float/2addr v6, p1

    .line 96
    float-to-int p1, v6

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-array v3, v3, [Ljava/lang/Object;

    .line 102
    .line 103
    aput-object v4, v3, v2

    .line 104
    .line 105
    aput-object v5, v3, v1

    .line 106
    .line 107
    aput-object p1, v3, v0

    .line 108
    .line 109
    const-string p1, "%02d:%02d:%02d"

    .line 110
    .line 111
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    return-object p1

    .line 116
    :cond_3
    :goto_0
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    return-object v5

    .line 120
    :cond_4
    :try_start_0
    iget-object p1, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 121
    .line 122
    invoke-virtual {v4, p1}, Lj1/c;->d(Ljava/nio/ByteOrder;)D

    .line 123
    .line 124
    .line 125
    move-result-wide v0

    .line 126
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    return-object p1

    .line 131
    :catch_0
    :cond_5
    return-object v5
.end method

.method public final c()I
    .locals 3

    .line 1
    const-string v0, "Orientation"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lj1/g;->d(Ljava/lang/String;)Lj1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    :try_start_0
    iget-object v2, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lj1/c;->e(Ljava/nio/ByteOrder;)I

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return v0

    .line 18
    :catch_0
    return v1
.end method

.method public final d(Ljava/lang/String;)Lj1/c;
    .locals 2

    .line 1
    const-string v0, "ISOSpeedRatings"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p1, "PhotographicSensitivity"

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    sget-object v1, Lj1/g;->G:[[Lj1/d;

    .line 13
    .line 14
    array-length v1, v1

    .line 15
    if-ge v0, v1, :cond_2

    .line 16
    .line 17
    iget-object v1, p0, Lj1/g;->e:[Ljava/util/HashMap;

    .line 18
    .line 19
    aget-object v1, v1, v0

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lj1/c;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 p1, 0x0

    .line 34
    return-object p1
.end method

.method public final e(Lj1/f;)V
    .locals 11

    .line 1
    const-string v0, "yes"

    .line 2
    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v2, 0x1c

    .line 6
    .line 7
    if-lt v1, v2, :cond_d

    .line 8
    .line 9
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    new-instance v2, Lj1/a;

    .line 15
    .line 16
    invoke-direct {v2, p1}, Lj1/a;-><init>(Lj1/f;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Lj1/i;->a(Landroid/media/MediaMetadataRetriever;Landroid/media/MediaDataSource;)V

    .line 20
    .line 21
    .line 22
    const/16 v2, 0x21

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/16 v3, 0x22

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const/16 v4, 0x1a

    .line 35
    .line 36
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/16 v5, 0x11

    .line 41
    .line 42
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    const/16 v0, 0x1d

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/16 v4, 0x1e

    .line 59
    .line 60
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const/16 v5, 0x1f

    .line 65
    .line 66
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    const/16 v0, 0x12

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const/16 v4, 0x13

    .line 87
    .line 88
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const/16 v5, 0x18

    .line 93
    .line 94
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 v0, 0x0

    .line 100
    move-object v4, v0

    .line 101
    move-object v5, v4

    .line 102
    :goto_0
    iget-object v6, p0, Lj1/g;->e:[Ljava/util/HashMap;

    .line 103
    .line 104
    const/4 v7, 0x0

    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    :try_start_1
    aget-object v8, v6, v7

    .line 108
    .line 109
    const-string v9, "ImageWidth"

    .line 110
    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    iget-object v10, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 116
    .line 117
    invoke-static {v0, v10}, Lj1/c;->c(ILjava/nio/ByteOrder;)Lj1/c;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    :cond_2
    if-eqz v4, :cond_3

    .line 125
    .line 126
    aget-object v0, v6, v7

    .line 127
    .line 128
    const-string v8, "ImageLength"

    .line 129
    .line 130
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    iget-object v9, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 135
    .line 136
    invoke-static {v4, v9}, Lj1/c;->c(ILjava/nio/ByteOrder;)Lj1/c;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    :cond_3
    const/4 v0, 0x6

    .line 144
    if-eqz v5, :cond_7

    .line 145
    .line 146
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    const/16 v5, 0x5a

    .line 151
    .line 152
    if-eq v4, v5, :cond_6

    .line 153
    .line 154
    const/16 v5, 0xb4

    .line 155
    .line 156
    if-eq v4, v5, :cond_5

    .line 157
    .line 158
    const/16 v5, 0x10e

    .line 159
    .line 160
    if-eq v4, v5, :cond_4

    .line 161
    .line 162
    const/4 v4, 0x1

    .line 163
    goto :goto_1

    .line 164
    :cond_4
    const/16 v4, 0x8

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_5
    const/4 v4, 0x3

    .line 168
    goto :goto_1

    .line 169
    :cond_6
    const/4 v4, 0x6

    .line 170
    :goto_1
    aget-object v5, v6, v7

    .line 171
    .line 172
    const-string v6, "Orientation"

    .line 173
    .line 174
    iget-object v8, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 175
    .line 176
    invoke-static {v4, v8}, Lj1/c;->c(ILjava/nio/ByteOrder;)Lj1/c;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    :cond_7
    if-eqz v2, :cond_c

    .line 184
    .line 185
    if-eqz v3, :cond_c

    .line 186
    .line 187
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-le v3, v0, :cond_b

    .line 196
    .line 197
    int-to-long v4, v2

    .line 198
    invoke-virtual {p1, v4, v5}, Lj1/f;->A(J)V

    .line 199
    .line 200
    .line 201
    new-array v4, v0, [B

    .line 202
    .line 203
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-ne v5, v0, :cond_a

    .line 208
    .line 209
    add-int/2addr v2, v0

    .line 210
    add-int/lit8 v3, v3, -0x6

    .line 211
    .line 212
    sget-object v0, Lj1/g;->N:[B

    .line 213
    .line 214
    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_9

    .line 219
    .line 220
    new-array v0, v3, [B

    .line 221
    .line 222
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-ne p1, v3, :cond_8

    .line 227
    .line 228
    iput v2, p0, Lj1/g;->i:I

    .line 229
    .line 230
    invoke-virtual {p0, v7, v0}, Lj1/g;->t(I[B)V

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_8
    new-instance p1, Ljava/io/IOException;

    .line 235
    .line 236
    const-string v0, "Can\'t read exif"

    .line 237
    .line 238
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    throw p1

    .line 242
    :cond_9
    new-instance p1, Ljava/io/IOException;

    .line 243
    .line 244
    const-string v0, "Invalid identifier"

    .line 245
    .line 246
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw p1

    .line 250
    :cond_a
    new-instance p1, Ljava/io/IOException;

    .line 251
    .line 252
    const-string v0, "Can\'t read identifier"

    .line 253
    .line 254
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw p1

    .line 258
    :cond_b
    new-instance p1, Ljava/io/IOException;

    .line 259
    .line 260
    const-string v0, "Invalid exif length"

    .line 261
    .line 262
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    :cond_c
    :goto_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    :catch_0
    :try_start_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 271
    .line 272
    const-string v0, "Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported."

    .line 273
    .line 274
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    :goto_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 279
    .line 280
    .line 281
    throw p1

    .line 282
    :cond_d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 283
    .line 284
    const-string v0, "Reading EXIF from HEIF files is supported from SDK 28 and above"

    .line 285
    .line 286
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    throw p1
.end method

.method public final f(Lj1/b;II)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    sget-boolean v3, Lj1/g;->m:Z

    .line 8
    .line 9
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 10
    .line 11
    iput-object v4, v1, Lj1/b;->b:Ljava/nio/ByteOrder;

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Lj1/b;->readByte()B

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const-string v5, "Invalid marker: "

    .line 18
    .line 19
    const/4 v6, -0x1

    .line 20
    if-ne v4, v6, :cond_17

    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Lj1/b;->readByte()B

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    const/16 v8, -0x28

    .line 27
    .line 28
    if-ne v7, v8, :cond_16

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    const/4 v5, 0x2

    .line 32
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lj1/b;->readByte()B

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-ne v7, v6, :cond_15

    .line 37
    .line 38
    invoke-virtual/range {p1 .. p1}, Lj1/b;->readByte()B

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    and-int/lit16 v8, v7, 0xff

    .line 45
    .line 46
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    :cond_0
    const/16 v8, -0x27

    .line 50
    .line 51
    if-eq v7, v8, :cond_14

    .line 52
    .line 53
    const/16 v8, -0x26

    .line 54
    .line 55
    if-ne v7, v8, :cond_1

    .line 56
    .line 57
    goto/16 :goto_9

    .line 58
    .line 59
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lj1/b;->readUnsignedShort()I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    add-int/lit8 v9, v8, -0x2

    .line 64
    .line 65
    const/4 v10, 0x4

    .line 66
    add-int/2addr v5, v10

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    and-int/lit16 v11, v7, 0xff

    .line 70
    .line 71
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    :cond_2
    const-string v11, "Invalid length"

    .line 75
    .line 76
    if-ltz v9, :cond_13

    .line 77
    .line 78
    iget-object v12, v0, Lj1/g;->e:[Ljava/util/HashMap;

    .line 79
    .line 80
    const/4 v13, 0x0

    .line 81
    const/16 v14, -0x1f

    .line 82
    .line 83
    if-eq v7, v14, :cond_8

    .line 84
    .line 85
    const/4 v14, -0x2

    .line 86
    const/4 v15, 0x1

    .line 87
    if-eq v7, v14, :cond_5

    .line 88
    .line 89
    packed-switch v7, :pswitch_data_0

    .line 90
    .line 91
    .line 92
    packed-switch v7, :pswitch_data_1

    .line 93
    .line 94
    .line 95
    packed-switch v7, :pswitch_data_2

    .line 96
    .line 97
    .line 98
    packed-switch v7, :pswitch_data_3

    .line 99
    .line 100
    .line 101
    goto/16 :goto_8

    .line 102
    .line 103
    :pswitch_0
    invoke-virtual {v1, v15}, Lj1/b;->r(I)V

    .line 104
    .line 105
    .line 106
    aget-object v7, v12, v2

    .line 107
    .line 108
    if-eq v2, v10, :cond_3

    .line 109
    .line 110
    const-string v9, "ImageLength"

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    const-string v9, "ThumbnailImageLength"

    .line 114
    .line 115
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lj1/b;->readUnsignedShort()I

    .line 116
    .line 117
    .line 118
    move-result v13

    .line 119
    int-to-long v13, v13

    .line 120
    iget-object v15, v0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 121
    .line 122
    invoke-static {v13, v14, v15}, Lj1/c;->a(JLjava/nio/ByteOrder;)Lj1/c;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    invoke-virtual {v7, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    aget-object v7, v12, v2

    .line 130
    .line 131
    if-eq v2, v10, :cond_4

    .line 132
    .line 133
    const-string v9, "ImageWidth"

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_4
    const-string v9, "ThumbnailImageWidth"

    .line 137
    .line 138
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lj1/b;->readUnsignedShort()I

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    int-to-long v12, v10

    .line 143
    iget-object v10, v0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 144
    .line 145
    invoke-static {v12, v13, v10}, Lj1/c;->a(JLjava/nio/ByteOrder;)Lj1/c;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    add-int/lit8 v9, v8, -0x7

    .line 153
    .line 154
    goto/16 :goto_8

    .line 155
    .line 156
    :cond_5
    new-array v7, v9, [B

    .line 157
    .line 158
    invoke-virtual {v1, v7}, Ljava/io/InputStream;->read([B)I

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    if-ne v8, v9, :cond_7

    .line 163
    .line 164
    const-string v8, "UserComment"

    .line 165
    .line 166
    invoke-virtual {v0, v8}, Lj1/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    if-nez v9, :cond_6

    .line 171
    .line 172
    aget-object v9, v12, v15

    .line 173
    .line 174
    new-instance v10, Ljava/lang/String;

    .line 175
    .line 176
    sget-object v12, Lj1/g;->M:Ljava/nio/charset/Charset;

    .line 177
    .line 178
    invoke-direct {v10, v7, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 179
    .line 180
    .line 181
    const-string v7, "\u0000"

    .line 182
    .line 183
    invoke-virtual {v10, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    invoke-virtual {v7, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    new-instance v10, Lj1/c;

    .line 192
    .line 193
    array-length v12, v7

    .line 194
    invoke-direct {v10, v4, v12, v7}, Lj1/c;-><init>(II[B)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    :cond_6
    :goto_3
    const/4 v9, 0x0

    .line 201
    goto/16 :goto_8

    .line 202
    .line 203
    :cond_7
    new-instance v1, Ljava/io/IOException;

    .line 204
    .line 205
    const-string v2, "Invalid exif"

    .line 206
    .line 207
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw v1

    .line 211
    :cond_8
    new-array v7, v9, [B

    .line 212
    .line 213
    invoke-virtual {v1, v7}, Lj1/b;->readFully([B)V

    .line 214
    .line 215
    .line 216
    add-int v8, v5, v9

    .line 217
    .line 218
    sget-object v10, Lj1/g;->N:[B

    .line 219
    .line 220
    if-nez v10, :cond_9

    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_9
    array-length v14, v10

    .line 224
    if-ge v9, v14, :cond_a

    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_a
    const/4 v14, 0x0

    .line 228
    :goto_4
    array-length v15, v10

    .line 229
    if-ge v14, v15, :cond_10

    .line 230
    .line 231
    aget-byte v15, v7, v14

    .line 232
    .line 233
    aget-byte v4, v10, v14

    .line 234
    .line 235
    if-eq v15, v4, :cond_f

    .line 236
    .line 237
    :goto_5
    sget-object v4, Lj1/g;->O:[B

    .line 238
    .line 239
    if-nez v4, :cond_b

    .line 240
    .line 241
    goto :goto_7

    .line 242
    :cond_b
    array-length v10, v4

    .line 243
    if-ge v9, v10, :cond_c

    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_c
    const/4 v10, 0x0

    .line 247
    :goto_6
    array-length v14, v4

    .line 248
    if-ge v10, v14, :cond_e

    .line 249
    .line 250
    aget-byte v14, v7, v10

    .line 251
    .line 252
    aget-byte v15, v4, v10

    .line 253
    .line 254
    if-eq v14, v15, :cond_d

    .line 255
    .line 256
    goto :goto_7

    .line 257
    :cond_d
    add-int/lit8 v10, v10, 0x1

    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_e
    array-length v10, v4

    .line 261
    add-int/2addr v5, v10

    .line 262
    array-length v4, v4

    .line 263
    invoke-static {v7, v4, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    const-string v7, "Xmp"

    .line 268
    .line 269
    invoke-virtual {v0, v7}, Lj1/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v9

    .line 273
    if-nez v9, :cond_11

    .line 274
    .line 275
    aget-object v9, v12, v13

    .line 276
    .line 277
    new-instance v10, Lj1/c;

    .line 278
    .line 279
    array-length v12, v4

    .line 280
    int-to-long v14, v5

    .line 281
    const/16 v20, 0x1

    .line 282
    .line 283
    move-object/from16 v16, v10

    .line 284
    .line 285
    move-wide/from16 v17, v14

    .line 286
    .line 287
    move-object/from16 v19, v4

    .line 288
    .line 289
    move/from16 v21, v12

    .line 290
    .line 291
    invoke-direct/range {v16 .. v21}, Lj1/c;-><init>(J[BII)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v9, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_f
    add-int/lit8 v14, v14, 0x1

    .line 299
    .line 300
    const/4 v4, 0x2

    .line 301
    goto :goto_4

    .line 302
    :cond_10
    array-length v4, v10

    .line 303
    invoke-static {v7, v4, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    add-int v5, p2, v5

    .line 308
    .line 309
    array-length v7, v10

    .line 310
    add-int/2addr v5, v7

    .line 311
    iput v5, v0, Lj1/g;->i:I

    .line 312
    .line 313
    invoke-virtual {v0, v2, v4}, Lj1/g;->t(I[B)V

    .line 314
    .line 315
    .line 316
    new-instance v5, Lj1/b;

    .line 317
    .line 318
    invoke-direct {v5, v4}, Lj1/b;-><init>([B)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, v5}, Lj1/g;->w(Lj1/b;)V

    .line 322
    .line 323
    .line 324
    :cond_11
    :goto_7
    move v5, v8

    .line 325
    goto :goto_3

    .line 326
    :goto_8
    if-ltz v9, :cond_12

    .line 327
    .line 328
    invoke-virtual {v1, v9}, Lj1/b;->r(I)V

    .line 329
    .line 330
    .line 331
    add-int/2addr v5, v9

    .line 332
    const/4 v4, 0x2

    .line 333
    goto/16 :goto_0

    .line 334
    .line 335
    :cond_12
    new-instance v1, Ljava/io/IOException;

    .line 336
    .line 337
    invoke-direct {v1, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    throw v1

    .line 341
    :cond_13
    new-instance v1, Ljava/io/IOException;

    .line 342
    .line 343
    invoke-direct {v1, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    throw v1

    .line 347
    :cond_14
    :goto_9
    iget-object v2, v0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 348
    .line 349
    iput-object v2, v1, Lj1/b;->b:Ljava/nio/ByteOrder;

    .line 350
    .line 351
    return-void

    .line 352
    :cond_15
    new-instance v1, Ljava/io/IOException;

    .line 353
    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    const-string v3, "Invalid marker:"

    .line 357
    .line 358
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    and-int/lit16 v3, v7, 0xff

    .line 362
    .line 363
    invoke-static {v3, v2}, Lg/b;->e(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    throw v1

    .line 371
    :cond_16
    new-instance v1, Ljava/io/IOException;

    .line 372
    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    and-int/lit16 v3, v4, 0xff

    .line 379
    .line 380
    invoke-static {v3, v2}, Lg/b;->e(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    throw v1

    .line 388
    :cond_17
    new-instance v1, Ljava/io/IOException;

    .line 389
    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    and-int/lit16 v3, v4, 0xff

    .line 396
    .line 397
    invoke-static {v3, v2}, Lg/b;->e(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    goto :goto_b

    .line 405
    :goto_a
    throw v1

    .line 406
    :goto_b
    goto :goto_a

    .line 407
    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/io/BufferedInputStream;)I
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/16 v2, 0x1388

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 8
    .line 9
    .line 10
    new-array v3, v2, [B

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_0
    sget-object v5, Lj1/g;->p:[B

    .line 21
    .line 22
    array-length v6, v5

    .line 23
    const/4 v7, 0x4

    .line 24
    if-ge v4, v6, :cond_21

    .line 25
    .line 26
    aget-byte v6, v3, v4

    .line 27
    .line 28
    aget-byte v5, v5, v4

    .line 29
    .line 30
    if-eq v6, v5, :cond_20

    .line 31
    .line 32
    const-string v4, "FUJIFILMCCD-RAW"

    .line 33
    .line 34
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const/4 v5, 0x0

    .line 43
    :goto_1
    array-length v6, v4

    .line 44
    if-ge v5, v6, :cond_1f

    .line 45
    .line 46
    aget-byte v6, v3, v5

    .line 47
    .line 48
    aget-byte v8, v4, v5

    .line 49
    .line 50
    if-eq v6, v8, :cond_1e

    .line 51
    .line 52
    :try_start_0
    new-instance v6, Lj1/b;

    .line 53
    .line 54
    invoke-direct {v6, v3}, Lj1/b;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    .line 56
    .line 57
    :try_start_1
    invoke-virtual {v6}, Lj1/b;->readInt()I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    int-to-long v8, v8

    .line 62
    new-array v10, v7, [B

    .line 63
    .line 64
    invoke-virtual {v6, v10}, Ljava/io/InputStream;->read([B)I

    .line 65
    .line 66
    .line 67
    sget-object v11, Lj1/g;->q:[B

    .line 68
    .line 69
    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([B[B)Z

    .line 70
    .line 71
    .line 72
    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    if-nez v10, :cond_1

    .line 74
    .line 75
    :cond_0
    :goto_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_8

    .line 79
    .line 80
    :cond_1
    const-wide/16 v10, 0x8

    .line 81
    .line 82
    const-wide/16 v12, 0x1

    .line 83
    .line 84
    cmp-long v14, v8, v12

    .line 85
    .line 86
    if-nez v14, :cond_2

    .line 87
    .line 88
    :try_start_2
    invoke-virtual {v6}, Lj1/b;->readLong()J

    .line 89
    .line 90
    .line 91
    move-result-wide v8

    .line 92
    const-wide/16 v14, 0x10

    .line 93
    .line 94
    cmp-long v16, v8, v14

    .line 95
    .line 96
    if-gez v16, :cond_3

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    move-object v5, v6

    .line 101
    goto :goto_6

    .line 102
    :catch_0
    nop

    .line 103
    goto :goto_7

    .line 104
    :cond_2
    move-wide v14, v10

    .line 105
    :cond_3
    int-to-long v4, v2

    .line 106
    cmp-long v2, v8, v4

    .line 107
    .line 108
    if-lez v2, :cond_4

    .line 109
    .line 110
    move-wide v8, v4

    .line 111
    :cond_4
    sub-long/2addr v8, v14

    .line 112
    cmp-long v2, v8, v10

    .line 113
    .line 114
    if-gez v2, :cond_5

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_5
    new-array v2, v7, [B

    .line 118
    .line 119
    const-wide/16 v4, 0x0

    .line 120
    .line 121
    const/4 v10, 0x0

    .line 122
    const/4 v11, 0x0

    .line 123
    :goto_3
    const-wide/16 v14, 0x4

    .line 124
    .line 125
    div-long v14, v8, v14

    .line 126
    .line 127
    cmp-long v17, v4, v14

    .line 128
    .line 129
    if-gez v17, :cond_0

    .line 130
    .line 131
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    .line 132
    .line 133
    .line 134
    move-result v14

    .line 135
    if-eq v14, v7, :cond_6

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_6
    cmp-long v14, v4, v12

    .line 139
    .line 140
    if-nez v14, :cond_7

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_7
    sget-object v14, Lj1/g;->r:[B

    .line 144
    .line 145
    invoke-static {v2, v14}, Ljava/util/Arrays;->equals([B[B)Z

    .line 146
    .line 147
    .line 148
    move-result v14

    .line 149
    if-eqz v14, :cond_8

    .line 150
    .line 151
    const/4 v10, 0x1

    .line 152
    goto :goto_4

    .line 153
    :cond_8
    sget-object v14, Lj1/g;->s:[B

    .line 154
    .line 155
    invoke-static {v2, v14}, Ljava/util/Arrays;->equals([B[B)Z

    .line 156
    .line 157
    .line 158
    move-result v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    if-eqz v14, :cond_9

    .line 160
    .line 161
    const/4 v11, 0x1

    .line 162
    :cond_9
    :goto_4
    if-eqz v10, :cond_a

    .line 163
    .line 164
    if-eqz v11, :cond_a

    .line 165
    .line 166
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 167
    .line 168
    .line 169
    const/16 v0, 0xc

    .line 170
    .line 171
    return v0

    .line 172
    :cond_a
    :goto_5
    add-long/2addr v4, v12

    .line 173
    goto :goto_3

    .line 174
    :catchall_1
    move-exception v0

    .line 175
    const/4 v5, 0x0

    .line 176
    goto :goto_6

    .line 177
    :catch_1
    nop

    .line 178
    const/4 v6, 0x0

    .line 179
    goto :goto_7

    .line 180
    :goto_6
    if-eqz v5, :cond_b

    .line 181
    .line 182
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 183
    .line 184
    .line 185
    :cond_b
    throw v0

    .line 186
    :goto_7
    if-eqz v6, :cond_c

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_c
    :goto_8
    :try_start_3
    new-instance v2, Lj1/b;

    .line 190
    .line 191
    invoke-direct {v2, v3}, Lj1/b;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 192
    .line 193
    .line 194
    :try_start_4
    invoke-static {v2}, Lj1/g;->s(Lj1/b;)Ljava/nio/ByteOrder;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    iput-object v4, v1, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 199
    .line 200
    iput-object v4, v2, Lj1/b;->b:Ljava/nio/ByteOrder;

    .line 201
    .line 202
    invoke-virtual {v2}, Lj1/b;->readShort()S

    .line 203
    .line 204
    .line 205
    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 206
    const/16 v5, 0x4f52

    .line 207
    .line 208
    if-eq v4, v5, :cond_e

    .line 209
    .line 210
    const/16 v5, 0x5352

    .line 211
    .line 212
    if-ne v4, v5, :cond_d

    .line 213
    .line 214
    goto :goto_9

    .line 215
    :cond_d
    const/4 v4, 0x0

    .line 216
    goto :goto_a

    .line 217
    :cond_e
    :goto_9
    const/4 v4, 0x1

    .line 218
    :goto_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 219
    .line 220
    .line 221
    goto :goto_d

    .line 222
    :catchall_2
    move-exception v0

    .line 223
    move-object v5, v2

    .line 224
    goto :goto_b

    .line 225
    :catch_2
    nop

    .line 226
    goto :goto_c

    .line 227
    :catchall_3
    move-exception v0

    .line 228
    const/4 v5, 0x0

    .line 229
    goto :goto_b

    .line 230
    :catch_3
    nop

    .line 231
    const/4 v2, 0x0

    .line 232
    goto :goto_c

    .line 233
    :goto_b
    if-eqz v5, :cond_f

    .line 234
    .line 235
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 236
    .line 237
    .line 238
    :cond_f
    throw v0

    .line 239
    :goto_c
    if-eqz v2, :cond_10

    .line 240
    .line 241
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 242
    .line 243
    .line 244
    :cond_10
    const/4 v4, 0x0

    .line 245
    :goto_d
    if-eqz v4, :cond_11

    .line 246
    .line 247
    const/4 v0, 0x7

    .line 248
    return v0

    .line 249
    :cond_11
    :try_start_5
    new-instance v2, Lj1/b;

    .line 250
    .line 251
    invoke-direct {v2, v3}, Lj1/b;-><init>([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 252
    .line 253
    .line 254
    :try_start_6
    invoke-static {v2}, Lj1/g;->s(Lj1/b;)Ljava/nio/ByteOrder;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    iput-object v4, v1, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 259
    .line 260
    iput-object v4, v2, Lj1/b;->b:Ljava/nio/ByteOrder;

    .line 261
    .line 262
    invoke-virtual {v2}, Lj1/b;->readShort()S

    .line 263
    .line 264
    .line 265
    move-result v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 266
    const/16 v5, 0x55

    .line 267
    .line 268
    if-ne v4, v5, :cond_12

    .line 269
    .line 270
    const/4 v4, 0x1

    .line 271
    goto :goto_e

    .line 272
    :cond_12
    const/4 v4, 0x0

    .line 273
    :goto_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 274
    .line 275
    .line 276
    goto :goto_11

    .line 277
    :catchall_4
    move-exception v0

    .line 278
    move-object v5, v2

    .line 279
    goto :goto_f

    .line 280
    :catch_4
    nop

    .line 281
    move-object v5, v2

    .line 282
    goto :goto_10

    .line 283
    :catchall_5
    move-exception v0

    .line 284
    const/4 v5, 0x0

    .line 285
    goto :goto_f

    .line 286
    :catch_5
    nop

    .line 287
    const/4 v5, 0x0

    .line 288
    goto :goto_10

    .line 289
    :goto_f
    if-eqz v5, :cond_13

    .line 290
    .line 291
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 292
    .line 293
    .line 294
    :cond_13
    throw v0

    .line 295
    :goto_10
    if-eqz v5, :cond_14

    .line 296
    .line 297
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 298
    .line 299
    .line 300
    :cond_14
    const/4 v4, 0x0

    .line 301
    :goto_11
    if-eqz v4, :cond_15

    .line 302
    .line 303
    const/16 v0, 0xa

    .line 304
    .line 305
    return v0

    .line 306
    :cond_15
    const/4 v2, 0x0

    .line 307
    :goto_12
    sget-object v4, Lj1/g;->v:[B

    .line 308
    .line 309
    array-length v5, v4

    .line 310
    if-ge v2, v5, :cond_17

    .line 311
    .line 312
    aget-byte v5, v3, v2

    .line 313
    .line 314
    aget-byte v4, v4, v2

    .line 315
    .line 316
    if-eq v5, v4, :cond_16

    .line 317
    .line 318
    const/4 v2, 0x0

    .line 319
    goto :goto_13

    .line 320
    :cond_16
    add-int/lit8 v2, v2, 0x1

    .line 321
    .line 322
    goto :goto_12

    .line 323
    :cond_17
    const/4 v2, 0x1

    .line 324
    :goto_13
    if-eqz v2, :cond_18

    .line 325
    .line 326
    const/16 v0, 0xd

    .line 327
    .line 328
    return v0

    .line 329
    :cond_18
    const/4 v2, 0x0

    .line 330
    :goto_14
    sget-object v4, Lj1/g;->z:[B

    .line 331
    .line 332
    array-length v5, v4

    .line 333
    if-ge v2, v5, :cond_1a

    .line 334
    .line 335
    aget-byte v5, v3, v2

    .line 336
    .line 337
    aget-byte v4, v4, v2

    .line 338
    .line 339
    if-eq v5, v4, :cond_19

    .line 340
    .line 341
    :goto_15
    const/4 v4, 0x0

    .line 342
    goto :goto_17

    .line 343
    :cond_19
    add-int/lit8 v2, v2, 0x1

    .line 344
    .line 345
    goto :goto_14

    .line 346
    :cond_1a
    const/4 v2, 0x0

    .line 347
    :goto_16
    sget-object v5, Lj1/g;->A:[B

    .line 348
    .line 349
    array-length v6, v5

    .line 350
    if-ge v2, v6, :cond_1c

    .line 351
    .line 352
    array-length v6, v4

    .line 353
    add-int/2addr v6, v2

    .line 354
    add-int/2addr v6, v7

    .line 355
    aget-byte v6, v3, v6

    .line 356
    .line 357
    aget-byte v5, v5, v2

    .line 358
    .line 359
    if-eq v6, v5, :cond_1b

    .line 360
    .line 361
    goto :goto_15

    .line 362
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    .line 363
    .line 364
    goto :goto_16

    .line 365
    :cond_1c
    const/4 v4, 0x1

    .line 366
    :goto_17
    if-eqz v4, :cond_1d

    .line 367
    .line 368
    const/16 v0, 0xe

    .line 369
    .line 370
    :cond_1d
    return v0

    .line 371
    :cond_1e
    add-int/lit8 v5, v5, 0x1

    .line 372
    .line 373
    goto/16 :goto_1

    .line 374
    .line 375
    :cond_1f
    const/16 v0, 0x9

    .line 376
    .line 377
    return v0

    .line 378
    :cond_20
    add-int/lit8 v4, v4, 0x1

    .line 379
    .line 380
    goto/16 :goto_0

    .line 381
    .line 382
    :cond_21
    return v7
.end method

.method public final h(Lj1/f;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lj1/g;->k(Lj1/f;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lj1/g;->e:[Ljava/util/HashMap;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    aget-object v1, p1, v0

    .line 8
    .line 9
    const-string v2, "MakerNote"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lj1/c;

    .line 16
    .line 17
    if-eqz v1, :cond_6

    .line 18
    .line 19
    new-instance v2, Lj1/f;

    .line 20
    .line 21
    iget-object v1, v1, Lj1/c;->d:[B

    .line 22
    .line 23
    invoke-direct {v2, v1}, Lj1/f;-><init>([B)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 27
    .line 28
    iput-object v1, v2, Lj1/b;->b:Ljava/nio/ByteOrder;

    .line 29
    .line 30
    sget-object v1, Lj1/g;->t:[B

    .line 31
    .line 32
    array-length v3, v1

    .line 33
    new-array v3, v3, [B

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lj1/b;->readFully([B)V

    .line 36
    .line 37
    .line 38
    const-wide/16 v4, 0x0

    .line 39
    .line 40
    invoke-virtual {v2, v4, v5}, Lj1/f;->A(J)V

    .line 41
    .line 42
    .line 43
    sget-object v4, Lj1/g;->u:[B

    .line 44
    .line 45
    array-length v5, v4

    .line 46
    new-array v5, v5, [B

    .line 47
    .line 48
    invoke-virtual {v2, v5}, Lj1/b;->readFully([B)V

    .line 49
    .line 50
    .line 51
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    const-wide/16 v3, 0x8

    .line 58
    .line 59
    invoke-virtual {v2, v3, v4}, Lj1/f;->A(J)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    const-wide/16 v3, 0xc

    .line 70
    .line 71
    invoke-virtual {v2, v3, v4}, Lj1/f;->A(J)V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    const/4 v1, 0x6

    .line 75
    invoke-virtual {p0, v2, v1}, Lj1/g;->u(Lj1/f;I)V

    .line 76
    .line 77
    .line 78
    const/4 v1, 0x7

    .line 79
    aget-object v2, p1, v1

    .line 80
    .line 81
    const-string v3, "PreviewImageStart"

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Lj1/c;

    .line 88
    .line 89
    aget-object v1, p1, v1

    .line 90
    .line 91
    const-string v3, "PreviewImageLength"

    .line 92
    .line 93
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lj1/c;

    .line 98
    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    if-eqz v1, :cond_2

    .line 102
    .line 103
    const/4 v3, 0x5

    .line 104
    aget-object v4, p1, v3

    .line 105
    .line 106
    const-string v5, "JPEGInterchangeFormat"

    .line 107
    .line 108
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    aget-object v2, p1, v3

    .line 112
    .line 113
    const-string v3, "JPEGInterchangeFormatLength"

    .line 114
    .line 115
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    :cond_2
    const/16 v1, 0x8

    .line 119
    .line 120
    aget-object v1, p1, v1

    .line 121
    .line 122
    const-string v2, "AspectFrame"

    .line 123
    .line 124
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Lj1/c;

    .line 129
    .line 130
    if-eqz v1, :cond_6

    .line 131
    .line 132
    iget-object v2, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Lj1/c;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, [I

    .line 139
    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    array-length v2, v1

    .line 143
    const/4 v3, 0x4

    .line 144
    if-eq v2, v3, :cond_3

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_3
    const/4 v2, 0x2

    .line 148
    aget v2, v1, v2

    .line 149
    .line 150
    const/4 v3, 0x0

    .line 151
    aget v4, v1, v3

    .line 152
    .line 153
    if-le v2, v4, :cond_6

    .line 154
    .line 155
    const/4 v5, 0x3

    .line 156
    aget v5, v1, v5

    .line 157
    .line 158
    aget v1, v1, v0

    .line 159
    .line 160
    if-le v5, v1, :cond_6

    .line 161
    .line 162
    sub-int/2addr v2, v4

    .line 163
    add-int/2addr v2, v0

    .line 164
    sub-int/2addr v5, v1

    .line 165
    add-int/2addr v5, v0

    .line 166
    if-ge v2, v5, :cond_4

    .line 167
    .line 168
    add-int/2addr v2, v5

    .line 169
    sub-int v5, v2, v5

    .line 170
    .line 171
    sub-int/2addr v2, v5

    .line 172
    :cond_4
    iget-object v0, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 173
    .line 174
    invoke-static {v2, v0}, Lj1/c;->c(ILjava/nio/ByteOrder;)Lj1/c;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object v1, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 179
    .line 180
    invoke-static {v5, v1}, Lj1/c;->c(ILjava/nio/ByteOrder;)Lj1/c;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    aget-object v2, p1, v3

    .line 185
    .line 186
    const-string v4, "ImageWidth"

    .line 187
    .line 188
    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    aget-object p1, p1, v3

    .line 192
    .line 193
    const-string v0, "ImageLength"

    .line 194
    .line 195
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_5
    :goto_1
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    :cond_6
    :goto_2
    return-void
.end method

.method public final i(Lj1/b;)V
    .locals 5

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    iput-object v0, p1, Lj1/b;->b:Ljava/nio/ByteOrder;

    .line 4
    .line 5
    sget-object v0, Lj1/g;->v:[B

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    invoke-virtual {p1, v1}, Lj1/b;->r(I)V

    .line 9
    .line 10
    .line 11
    array-length v0, v0

    .line 12
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lj1/b;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x4

    .line 17
    new-array v3, v2, [B

    .line 18
    .line 19
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-ne v4, v2, :cond_6

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x8

    .line 26
    .line 27
    const/16 v2, 0x10

    .line 28
    .line 29
    if-ne v0, v2, :cond_1

    .line 30
    .line 31
    sget-object v2, Lj1/g;->x:[B

    .line 32
    .line 33
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 41
    .line 42
    const-string v0, "Encountered invalid PNG file--IHDR chunk should appearas the first chunk"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_1
    :goto_1
    sget-object v2, Lj1/g;->y:[B

    .line 49
    .line 50
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    sget-object v2, Lj1/g;->w:[B

    .line 58
    .line 59
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_5

    .line 64
    .line 65
    new-array v2, v1, [B

    .line 66
    .line 67
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-ne v4, v1, :cond_4

    .line 72
    .line 73
    invoke-virtual {p1}, Lj1/b;->readInt()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    new-instance v1, Ljava/util/zip/CRC32;

    .line 78
    .line 79
    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 89
    .line 90
    .line 91
    move-result-wide v3

    .line 92
    long-to-int v4, v3

    .line 93
    if-ne v4, p1, :cond_3

    .line 94
    .line 95
    iput v0, p0, Lj1/g;->i:I

    .line 96
    .line 97
    const/4 p1, 0x0

    .line 98
    invoke-virtual {p0, p1, v2}, Lj1/g;->t(I[B)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lj1/g;->z()V

    .line 102
    .line 103
    .line 104
    new-instance p1, Lj1/b;

    .line 105
    .line 106
    invoke-direct {p1, v2}, Lj1/b;-><init>([B)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Lj1/g;->w(Lj1/b;)V

    .line 110
    .line 111
    .line 112
    :goto_2
    return-void

    .line 113
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 114
    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v3, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    .line 121
    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string p1, ", calculated CRC value: "

    .line 129
    .line 130
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 134
    .line 135
    .line 136
    move-result-wide v3

    .line 137
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw v0

    .line 148
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 149
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v1, "Failed to read given length for given PNG chunk type: "

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-static {v3}, La9/o;->d([B)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p1

    .line 175
    :cond_5
    add-int/lit8 v1, v1, 0x4

    .line 176
    .line 177
    invoke-virtual {p1, v1}, Lj1/b;->r(I)V

    .line 178
    .line 179
    .line 180
    add-int/2addr v0, v1

    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 184
    .line 185
    const-string v0, "Encountered invalid length while parsing PNG chunktype"

    .line 186
    .line 187
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :catch_0
    new-instance p1, Ljava/io/IOException;

    .line 192
    .line 193
    const-string v0, "Encountered corrupt PNG file."

    .line 194
    .line 195
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto :goto_4

    .line 199
    :goto_3
    throw p1

    .line 200
    :goto_4
    goto :goto_3
.end method

.method public final j(Lj1/b;)V
    .locals 6

    .line 1
    const/16 v0, 0x54

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lj1/b;->r(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    new-array v1, v0, [B

    .line 8
    .line 9
    new-array v2, v0, [B

    .line 10
    .line 11
    new-array v0, v0, [B

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    new-array v2, v2, [B

    .line 47
    .line 48
    iget v3, p1, Lj1/b;->c:I

    .line 49
    .line 50
    sub-int v3, v1, v3

    .line 51
    .line 52
    invoke-virtual {p1, v3}, Lj1/b;->r(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 56
    .line 57
    .line 58
    new-instance v3, Lj1/b;

    .line 59
    .line 60
    invoke-direct {v3, v2}, Lj1/b;-><init>([B)V

    .line 61
    .line 62
    .line 63
    const/4 v2, 0x5

    .line 64
    invoke-virtual {p0, v3, v1, v2}, Lj1/g;->f(Lj1/b;II)V

    .line 65
    .line 66
    .line 67
    iget v1, p1, Lj1/b;->c:I

    .line 68
    .line 69
    sub-int/2addr v0, v1

    .line 70
    invoke-virtual {p1, v0}, Lj1/b;->r(I)V

    .line 71
    .line 72
    .line 73
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 74
    .line 75
    iput-object v0, p1, Lj1/b;->b:Ljava/nio/ByteOrder;

    .line 76
    .line 77
    invoke-virtual {p1}, Lj1/b;->readInt()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const/4 v1, 0x0

    .line 82
    const/4 v2, 0x0

    .line 83
    :goto_0
    if-ge v2, v0, :cond_1

    .line 84
    .line 85
    invoke-virtual {p1}, Lj1/b;->readUnsignedShort()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    invoke-virtual {p1}, Lj1/b;->readUnsignedShort()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    sget-object v5, Lj1/g;->F:Lj1/d;

    .line 94
    .line 95
    iget v5, v5, Lj1/d;->a:I

    .line 96
    .line 97
    if-ne v3, v5, :cond_0

    .line 98
    .line 99
    invoke-virtual {p1}, Lj1/b;->readShort()S

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {p1}, Lj1/b;->readShort()S

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    iget-object v2, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 108
    .line 109
    invoke-static {v0, v2}, Lj1/c;->c(ILjava/nio/ByteOrder;)Lj1/c;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object v2, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 114
    .line 115
    invoke-static {p1, v2}, Lj1/c;->c(ILjava/nio/ByteOrder;)Lj1/c;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iget-object v2, p0, Lj1/g;->e:[Ljava/util/HashMap;

    .line 120
    .line 121
    aget-object v3, v2, v1

    .line 122
    .line 123
    const-string v4, "ImageLength"

    .line 124
    .line 125
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    aget-object v0, v2, v1

    .line 129
    .line 130
    const-string v1, "ImageWidth"

    .line 131
    .line 132
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_0
    invoke-virtual {p1, v4}, Lj1/b;->r(I)V

    .line 137
    .line 138
    .line 139
    add-int/lit8 v2, v2, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_1
    return-void
.end method

.method public final k(Lj1/f;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lj1/g;->q(Lj1/f;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lj1/g;->u(Lj1/f;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Lj1/g;->y(Lj1/f;I)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    invoke-virtual {p0, p1, v0}, Lj1/g;->y(Lj1/f;I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-virtual {p0, p1, v0}, Lj1/g;->y(Lj1/f;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lj1/g;->z()V

    .line 20
    .line 21
    .line 22
    iget p1, p0, Lj1/g;->d:I

    .line 23
    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    if-ne p1, v0, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lj1/g;->e:[Ljava/util/HashMap;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    aget-object v1, p1, v0

    .line 32
    .line 33
    const-string v2, "MakerNote"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lj1/c;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    new-instance v2, Lj1/f;

    .line 44
    .line 45
    iget-object v1, v1, Lj1/c;->d:[B

    .line 46
    .line 47
    invoke-direct {v2, v1}, Lj1/f;-><init>([B)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 51
    .line 52
    iput-object v1, v2, Lj1/b;->b:Ljava/nio/ByteOrder;

    .line 53
    .line 54
    const/4 v1, 0x6

    .line 55
    invoke-virtual {v2, v1}, Lj1/b;->r(I)V

    .line 56
    .line 57
    .line 58
    const/16 v1, 0x9

    .line 59
    .line 60
    invoke-virtual {p0, v2, v1}, Lj1/g;->u(Lj1/f;I)V

    .line 61
    .line 62
    .line 63
    aget-object v1, p1, v1

    .line 64
    .line 65
    const-string v2, "ColorSpace"

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lj1/c;

    .line 72
    .line 73
    if-eqz v1, :cond_0

    .line 74
    .line 75
    aget-object p1, p1, v0

    .line 76
    .line 77
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void
.end method

.method public final l(Lj1/f;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lj1/g;->k(Lj1/f;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lj1/g;->e:[Ljava/util/HashMap;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    aget-object v1, p1, v0

    .line 8
    .line 9
    const-string v2, "JpgFromRaw"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lj1/c;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance v2, Lj1/b;

    .line 20
    .line 21
    iget-object v3, v1, Lj1/c;->d:[B

    .line 22
    .line 23
    invoke-direct {v2, v3}, Lj1/b;-><init>([B)V

    .line 24
    .line 25
    .line 26
    iget-wide v3, v1, Lj1/c;->c:J

    .line 27
    .line 28
    long-to-int v1, v3

    .line 29
    const/4 v3, 0x5

    .line 30
    invoke-virtual {p0, v2, v1, v3}, Lj1/g;->f(Lj1/b;II)V

    .line 31
    .line 32
    .line 33
    :cond_0
    aget-object v0, p1, v0

    .line 34
    .line 35
    const-string v1, "ISO"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lj1/c;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    aget-object v2, p1, v1

    .line 45
    .line 46
    const-string v3, "PhotographicSensitivity"

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lj1/c;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    if-nez v2, :cond_1

    .line 57
    .line 58
    aget-object p1, p1, v1

    .line 59
    .line 60
    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method public final m(Lj1/b;)V
    .locals 5

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    iput-object v0, p1, Lj1/b;->b:Ljava/nio/ByteOrder;

    .line 4
    .line 5
    sget-object v0, Lj1/g;->z:[B

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    invoke-virtual {p1, v0}, Lj1/b;->r(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lj1/b;->readInt()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/lit8 v0, v0, 0x8

    .line 16
    .line 17
    sget-object v1, Lj1/g;->A:[B

    .line 18
    .line 19
    array-length v2, v1

    .line 20
    invoke-virtual {p1, v2}, Lj1/b;->r(I)V

    .line 21
    .line 22
    .line 23
    array-length v1, v1

    .line 24
    add-int/lit8 v1, v1, 0x8

    .line 25
    .line 26
    :goto_0
    const/4 v2, 0x4

    .line 27
    :try_start_0
    new-array v3, v2, [B

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-ne v4, v2, :cond_5

    .line 34
    .line 35
    invoke-virtual {p1}, Lj1/b;->readInt()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    add-int/lit8 v1, v1, 0x8

    .line 40
    .line 41
    sget-object v4, Lj1/g;->B:[B

    .line 42
    .line 43
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    new-array v0, v2, [B

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-ne p1, v2, :cond_0

    .line 56
    .line 57
    iput v1, p0, Lj1/g;->i:I

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1, v0}, Lj1/g;->t(I[B)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Lj1/b;

    .line 64
    .line 65
    invoke-direct {p1, v0}, Lj1/b;-><init>([B)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lj1/g;->w(Lj1/b;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v1, "Failed to read given length for given PNG chunk type: "

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-static {v3}, La9/o;->d([B)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_1
    rem-int/lit8 v3, v2, 0x2

    .line 100
    .line 101
    const/4 v4, 0x1

    .line 102
    if-ne v3, v4, :cond_2

    .line 103
    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 105
    .line 106
    :cond_2
    add-int/2addr v1, v2

    .line 107
    if-ne v1, v0, :cond_3

    .line 108
    .line 109
    :goto_1
    return-void

    .line 110
    :cond_3
    if-gt v1, v0, :cond_4

    .line 111
    .line 112
    invoke-virtual {p1, v2}, Lj1/b;->r(I)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 117
    .line 118
    const-string v0, "Encountered WebP file with invalid chunk size"

    .line 119
    .line 120
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 125
    .line 126
    const-string v0, "Encountered invalid length while parsing WebP chunktype"

    .line 127
    .line 128
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :catch_0
    new-instance p1, Ljava/io/IOException;

    .line 133
    .line 134
    const-string v0, "Encountered corrupt WebP file."

    .line 135
    .line 136
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :goto_2
    throw p1

    .line 141
    :goto_3
    goto :goto_2
.end method

.method public final n(Lj1/b;Ljava/util/HashMap;)V
    .locals 3

    .line 1
    const-string v0, "JPEGInterchangeFormat"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lj1/c;

    .line 8
    .line 9
    const-string v1, "JPEGInterchangeFormatLength"

    .line 10
    .line 11
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lj1/c;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lj1/c;->e(Ljava/nio/ByteOrder;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p2, v1}, Lj1/c;->e(Ljava/nio/ByteOrder;)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iget v1, p0, Lj1/g;->d:I

    .line 34
    .line 35
    const/4 v2, 0x7

    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    iget v1, p0, Lj1/g;->j:I

    .line 39
    .line 40
    add-int/2addr v0, v1

    .line 41
    :cond_0
    if-lez v0, :cond_1

    .line 42
    .line 43
    if-lez p2, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lj1/g;->a:Ljava/lang/String;

    .line 46
    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Lj1/g;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 50
    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, Lj1/g;->b:Ljava/io/FileDescriptor;

    .line 54
    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    new-array p2, p2, [B

    .line 58
    .line 59
    int-to-long v0, v0

    .line 60
    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method public final o(Ljava/util/HashMap;)Z
    .locals 2

    .line 1
    const-string v0, "ImageLength"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lj1/c;

    .line 8
    .line 9
    const-string v1, "ImageWidth"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lj1/c;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lj1/c;->e(Ljava/nio/ByteOrder;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lj1/c;->e(Ljava/nio/ByteOrder;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/16 v1, 0x200

    .line 34
    .line 35
    if-gt v0, v1, :cond_0

    .line 36
    .line 37
    if-gt p1, v1, :cond_0

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    return p1
.end method

.method public final p(Ljava/io/InputStream;)V
    .locals 7

    .line 1
    sget-boolean v0, Lj1/g;->m:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    :try_start_0
    sget-object v3, Lj1/g;->G:[[Lj1/d;

    .line 6
    .line 7
    array-length v3, v3

    .line 8
    if-ge v2, v3, :cond_0

    .line 9
    .line 10
    iget-object v3, p0, Lj1/g;->e:[Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v4, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    aput-object v4, v3, v2

    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto/16 :goto_5

    .line 24
    .line 25
    :catch_0
    nop

    .line 26
    goto/16 :goto_6

    .line 27
    .line 28
    :cond_0
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 29
    .line 30
    const/16 v3, 0x1388

    .line 31
    .line 32
    invoke-direct {v2, p1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2}, Lj1/g;->g(Ljava/io/BufferedInputStream;)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lj1/g;->d:I

    .line 40
    .line 41
    const/16 v3, 0xe

    .line 42
    .line 43
    const/16 v4, 0xd

    .line 44
    .line 45
    const/16 v5, 0x9

    .line 46
    .line 47
    const/4 v6, 0x4

    .line 48
    if-eq p1, v6, :cond_5

    .line 49
    .line 50
    if-eq p1, v5, :cond_5

    .line 51
    .line 52
    if-eq p1, v4, :cond_5

    .line 53
    .line 54
    if-ne p1, v3, :cond_1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    new-instance p1, Lj1/f;

    .line 58
    .line 59
    invoke-direct {p1, v2}, Lj1/f;-><init>(Ljava/io/InputStream;)V

    .line 60
    .line 61
    .line 62
    iget v1, p0, Lj1/g;->d:I

    .line 63
    .line 64
    const/16 v2, 0xc

    .line 65
    .line 66
    if-ne v1, v2, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lj1/g;->e(Lj1/f;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const/4 v2, 0x7

    .line 73
    if-ne v1, v2, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lj1/g;->h(Lj1/f;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const/16 v2, 0xa

    .line 80
    .line 81
    if-ne v1, v2, :cond_4

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Lj1/g;->l(Lj1/f;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    invoke-virtual {p0, p1}, Lj1/g;->k(Lj1/f;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    iget v1, p0, Lj1/g;->i:I

    .line 91
    .line 92
    int-to-long v1, v1

    .line 93
    invoke-virtual {p1, v1, v2}, Lj1/f;->A(J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1}, Lj1/g;->w(Lj1/b;)V

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_5
    :goto_2
    new-instance p1, Lj1/b;

    .line 101
    .line 102
    invoke-direct {p1, v2}, Lj1/b;-><init>(Ljava/io/InputStream;)V

    .line 103
    .line 104
    .line 105
    iget v2, p0, Lj1/g;->d:I

    .line 106
    .line 107
    if-ne v2, v6, :cond_6

    .line 108
    .line 109
    invoke-virtual {p0, p1, v1, v1}, Lj1/g;->f(Lj1/b;II)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    if-ne v2, v4, :cond_7

    .line 114
    .line 115
    invoke-virtual {p0, p1}, Lj1/g;->i(Lj1/b;)V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_7
    if-ne v2, v5, :cond_8

    .line 120
    .line 121
    invoke-virtual {p0, p1}, Lj1/g;->j(Lj1/b;)V

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_8
    if-ne v2, v3, :cond_9

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Lj1/g;->m(Lj1/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .line 129
    .line 130
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lj1/g;->a()V

    .line 131
    .line 132
    .line 133
    if-eqz v0, :cond_b

    .line 134
    .line 135
    :goto_4
    invoke-virtual {p0}, Lj1/g;->r()V

    .line 136
    .line 137
    .line 138
    goto :goto_7

    .line 139
    :goto_5
    invoke-virtual {p0}, Lj1/g;->a()V

    .line 140
    .line 141
    .line 142
    if-eqz v0, :cond_a

    .line 143
    .line 144
    invoke-virtual {p0}, Lj1/g;->r()V

    .line 145
    .line 146
    .line 147
    :cond_a
    throw p1

    .line 148
    :goto_6
    invoke-virtual {p0}, Lj1/g;->a()V

    .line 149
    .line 150
    .line 151
    if-eqz v0, :cond_b

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_b
    :goto_7
    return-void
.end method

.method public final q(Lj1/f;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lj1/g;->s(Lj1/b;)Ljava/nio/ByteOrder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 6
    .line 7
    iput-object v0, p1, Lj1/b;->b:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {p1}, Lj1/b;->readUnsignedShort()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lj1/g;->d:I

    .line 14
    .line 15
    const/4 v2, 0x7

    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    const/16 v1, 0x2a

    .line 23
    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "Invalid start code: "

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Lg/b;->e(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lj1/b;->readInt()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/16 v1, 0x8

    .line 49
    .line 50
    if-lt v0, v1, :cond_3

    .line 51
    .line 52
    add-int/lit8 v0, v0, -0x8

    .line 53
    .line 54
    if-lez v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lj1/b;->r(I)V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void

    .line 60
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 61
    .line 62
    const-string v1, "Invalid first Ifd offset: "

    .line 63
    .line 64
    invoke-static {v0, v1}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1
.end method

.method public final r()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lj1/g;->e:[Ljava/util/HashMap;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    aget-object v2, v1, v0

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 10
    .line 11
    .line 12
    aget-object v1, v1, v0

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/util/Map$Entry;

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lj1/c;

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v3}, Lj1/c;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 50
    .line 51
    invoke-virtual {v3, v2}, Lj1/c;->f(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method

.method public final t(I[B)V
    .locals 1

    .line 1
    new-instance v0, Lj1/f;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lj1/f;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lj1/g;->q(Lj1/f;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Lj1/g;->u(Lj1/f;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final u(Lj1/f;I)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const/4 v5, 0x5

    .line 8
    iget v9, v1, Lj1/b;->c:I

    .line 9
    .line 10
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v9

    .line 14
    iget-object v10, v0, Lj1/g;->f:Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Lj1/b;->readShort()S

    .line 20
    .line 21
    .line 22
    move-result v9

    .line 23
    if-gtz v9, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const/4 v11, 0x0

    .line 27
    :goto_0
    iget-object v12, v0, Lj1/g;->e:[Ljava/util/HashMap;

    .line 28
    .line 29
    sget-boolean v13, Lj1/g;->m:Z

    .line 30
    .line 31
    if-ge v11, v9, :cond_24

    .line 32
    .line 33
    invoke-virtual/range {p1 .. p1}, Lj1/b;->readUnsignedShort()I

    .line 34
    .line 35
    .line 36
    move-result v16

    .line 37
    invoke-virtual/range {p1 .. p1}, Lj1/b;->readUnsignedShort()I

    .line 38
    .line 39
    .line 40
    move-result v14

    .line 41
    invoke-virtual/range {p1 .. p1}, Lj1/b;->readInt()I

    .line 42
    .line 43
    .line 44
    move-result v15

    .line 45
    iget v6, v1, Lj1/b;->c:I

    .line 46
    .line 47
    int-to-long v3, v6

    .line 48
    const-wide/16 v17, 0x4

    .line 49
    .line 50
    add-long v3, v3, v17

    .line 51
    .line 52
    sget-object v6, Lj1/g;->I:[Ljava/util/HashMap;

    .line 53
    .line 54
    aget-object v6, v6, v2

    .line 55
    .line 56
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    check-cast v6, Lj1/d;

    .line 65
    .line 66
    if-eqz v13, :cond_2

    .line 67
    .line 68
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v19

    .line 76
    if-eqz v6, :cond_1

    .line 77
    .line 78
    iget-object v7, v6, Lj1/d;->b:Ljava/lang/String;

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/4 v7, 0x0

    .line 82
    :goto_1
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v20

    .line 86
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v21

    .line 90
    move/from16 v23, v9

    .line 91
    .line 92
    new-array v9, v5, [Ljava/lang/Object;

    .line 93
    .line 94
    const/16 v22, 0x0

    .line 95
    .line 96
    aput-object v8, v9, v22

    .line 97
    .line 98
    const/4 v8, 0x1

    .line 99
    aput-object v19, v9, v8

    .line 100
    .line 101
    const/4 v8, 0x2

    .line 102
    aput-object v7, v9, v8

    .line 103
    .line 104
    const/4 v7, 0x3

    .line 105
    aput-object v20, v9, v7

    .line 106
    .line 107
    const/4 v7, 0x4

    .line 108
    aput-object v21, v9, v7

    .line 109
    .line 110
    const-string v7, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    .line 111
    .line 112
    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_2
    move/from16 v23, v9

    .line 117
    .line 118
    :goto_2
    const/4 v9, 0x7

    .line 119
    if-nez v6, :cond_4

    .line 120
    .line 121
    :cond_3
    :goto_3
    move-object/from16 v24, v10

    .line 122
    .line 123
    goto/16 :goto_9

    .line 124
    .line 125
    :cond_4
    if-lez v14, :cond_3

    .line 126
    .line 127
    sget-object v5, Lj1/g;->D:[I

    .line 128
    .line 129
    array-length v8, v5

    .line 130
    if-lt v14, v8, :cond_5

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_5
    iget v8, v6, Lj1/d;->c:I

    .line 134
    .line 135
    if-eq v8, v9, :cond_a

    .line 136
    .line 137
    if-ne v14, v9, :cond_6

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_6
    if-eq v8, v14, :cond_a

    .line 141
    .line 142
    iget v9, v6, Lj1/d;->d:I

    .line 143
    .line 144
    if-ne v9, v14, :cond_7

    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_7
    const/4 v7, 0x4

    .line 148
    if-eq v8, v7, :cond_8

    .line 149
    .line 150
    if-ne v9, v7, :cond_9

    .line 151
    .line 152
    :cond_8
    const/4 v7, 0x3

    .line 153
    goto :goto_4

    .line 154
    :cond_9
    const/16 v7, 0x9

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :goto_4
    if-ne v14, v7, :cond_9

    .line 158
    .line 159
    :cond_a
    :goto_5
    const/4 v7, 0x7

    .line 160
    goto :goto_7

    .line 161
    :goto_6
    if-eq v8, v7, :cond_b

    .line 162
    .line 163
    if-ne v9, v7, :cond_c

    .line 164
    .line 165
    :cond_b
    const/16 v7, 0x8

    .line 166
    .line 167
    if-ne v14, v7, :cond_c

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_c
    const/16 v7, 0xc

    .line 171
    .line 172
    if-eq v8, v7, :cond_d

    .line 173
    .line 174
    if-ne v9, v7, :cond_e

    .line 175
    .line 176
    :cond_d
    const/16 v7, 0xb

    .line 177
    .line 178
    if-ne v14, v7, :cond_e

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_e
    if-eqz v13, :cond_3

    .line 182
    .line 183
    sget-object v5, Lj1/g;->C:[Ljava/lang/String;

    .line 184
    .line 185
    aget-object v5, v5, v14

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :goto_7
    if-ne v14, v7, :cond_f

    .line 189
    .line 190
    move v14, v8

    .line 191
    :cond_f
    int-to-long v7, v15

    .line 192
    aget v5, v5, v14

    .line 193
    .line 194
    move-object/from16 v24, v10

    .line 195
    .line 196
    int-to-long v9, v5

    .line 197
    mul-long v7, v7, v9

    .line 198
    .line 199
    const-wide/16 v9, 0x0

    .line 200
    .line 201
    cmp-long v5, v7, v9

    .line 202
    .line 203
    if-ltz v5, :cond_11

    .line 204
    .line 205
    const-wide/32 v9, 0x7fffffff

    .line 206
    .line 207
    .line 208
    cmp-long v5, v7, v9

    .line 209
    .line 210
    if-lez v5, :cond_10

    .line 211
    .line 212
    goto :goto_8

    .line 213
    :cond_10
    const/4 v5, 0x1

    .line 214
    goto :goto_a

    .line 215
    :cond_11
    :goto_8
    const/4 v5, 0x0

    .line 216
    goto :goto_a

    .line 217
    :goto_9
    const/4 v5, 0x0

    .line 218
    const-wide/16 v7, 0x0

    .line 219
    .line 220
    :goto_a
    if-nez v5, :cond_12

    .line 221
    .line 222
    invoke-virtual {v1, v3, v4}, Lj1/f;->A(J)V

    .line 223
    .line 224
    .line 225
    move/from16 v25, v11

    .line 226
    .line 227
    :goto_b
    const/4 v2, 0x1

    .line 228
    const/4 v6, 0x3

    .line 229
    goto/16 :goto_15

    .line 230
    .line 231
    :cond_12
    const-string v5, "Compression"

    .line 232
    .line 233
    cmp-long v9, v7, v17

    .line 234
    .line 235
    if-lez v9, :cond_15

    .line 236
    .line 237
    invoke-virtual/range {p1 .. p1}, Lj1/b;->readInt()I

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    iget v10, v0, Lj1/g;->d:I

    .line 242
    .line 243
    move/from16 v25, v11

    .line 244
    .line 245
    const/4 v11, 0x7

    .line 246
    if-ne v10, v11, :cond_13

    .line 247
    .line 248
    iget-object v10, v6, Lj1/d;->b:Ljava/lang/String;

    .line 249
    .line 250
    const-string v11, "MakerNote"

    .line 251
    .line 252
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v10

    .line 256
    if-eqz v10, :cond_14

    .line 257
    .line 258
    iput v9, v0, Lj1/g;->j:I

    .line 259
    .line 260
    :cond_13
    move-wide/from16 v26, v3

    .line 261
    .line 262
    move-wide/from16 v17, v7

    .line 263
    .line 264
    goto :goto_c

    .line 265
    :cond_14
    const/4 v10, 0x6

    .line 266
    if-ne v2, v10, :cond_13

    .line 267
    .line 268
    iget-object v11, v6, Lj1/d;->b:Ljava/lang/String;

    .line 269
    .line 270
    const-string v10, "ThumbnailImage"

    .line 271
    .line 272
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v10

    .line 276
    if-eqz v10, :cond_13

    .line 277
    .line 278
    iput v9, v0, Lj1/g;->k:I

    .line 279
    .line 280
    iput v15, v0, Lj1/g;->l:I

    .line 281
    .line 282
    iget-object v10, v0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 283
    .line 284
    const/4 v11, 0x6

    .line 285
    invoke-static {v11, v10}, Lj1/c;->c(ILjava/nio/ByteOrder;)Lj1/c;

    .line 286
    .line 287
    .line 288
    move-result-object v10

    .line 289
    iget v11, v0, Lj1/g;->k:I

    .line 290
    .line 291
    move-wide/from16 v17, v7

    .line 292
    .line 293
    int-to-long v7, v11

    .line 294
    iget-object v11, v0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 295
    .line 296
    invoke-static {v7, v8, v11}, Lj1/c;->a(JLjava/nio/ByteOrder;)Lj1/c;

    .line 297
    .line 298
    .line 299
    move-result-object v7

    .line 300
    iget v8, v0, Lj1/g;->l:I

    .line 301
    .line 302
    move-wide/from16 v26, v3

    .line 303
    .line 304
    int-to-long v2, v8

    .line 305
    iget-object v4, v0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 306
    .line 307
    invoke-static {v2, v3, v4}, Lj1/c;->a(JLjava/nio/ByteOrder;)Lj1/c;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    const/4 v3, 0x4

    .line 312
    aget-object v4, v12, v3

    .line 313
    .line 314
    invoke-virtual {v4, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    aget-object v4, v12, v3

    .line 318
    .line 319
    const-string v8, "JPEGInterchangeFormat"

    .line 320
    .line 321
    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    aget-object v4, v12, v3

    .line 325
    .line 326
    const-string v3, "JPEGInterchangeFormatLength"

    .line 327
    .line 328
    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    :goto_c
    int-to-long v2, v9

    .line 332
    invoke-virtual {v1, v2, v3}, Lj1/f;->A(J)V

    .line 333
    .line 334
    .line 335
    goto :goto_d

    .line 336
    :cond_15
    move-wide/from16 v26, v3

    .line 337
    .line 338
    move-wide/from16 v17, v7

    .line 339
    .line 340
    move/from16 v25, v11

    .line 341
    .line 342
    :goto_d
    sget-object v2, Lj1/g;->L:Ljava/util/HashMap;

    .line 343
    .line 344
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    check-cast v2, Ljava/lang/Integer;

    .line 353
    .line 354
    if-eqz v2, :cond_1d

    .line 355
    .line 356
    const/4 v3, 0x3

    .line 357
    if-eq v14, v3, :cond_19

    .line 358
    .line 359
    const/4 v3, 0x4

    .line 360
    if-eq v14, v3, :cond_18

    .line 361
    .line 362
    const/16 v3, 0x8

    .line 363
    .line 364
    if-eq v14, v3, :cond_17

    .line 365
    .line 366
    const/16 v3, 0x9

    .line 367
    .line 368
    if-eq v14, v3, :cond_16

    .line 369
    .line 370
    const/16 v3, 0xd

    .line 371
    .line 372
    if-eq v14, v3, :cond_16

    .line 373
    .line 374
    const-wide/16 v3, -0x1

    .line 375
    .line 376
    goto :goto_f

    .line 377
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lj1/b;->readInt()I

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    :goto_e
    int-to-long v3, v3

    .line 382
    goto :goto_f

    .line 383
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lj1/b;->readShort()S

    .line 384
    .line 385
    .line 386
    move-result v3

    .line 387
    goto :goto_e

    .line 388
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lj1/b;->readInt()I

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    int-to-long v3, v3

    .line 393
    const-wide v7, 0xffffffffL

    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    and-long/2addr v3, v7

    .line 399
    goto :goto_f

    .line 400
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lj1/b;->readUnsignedShort()I

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    goto :goto_e

    .line 405
    :goto_f
    if-eqz v13, :cond_1a

    .line 406
    .line 407
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 408
    .line 409
    .line 410
    move-result-object v5

    .line 411
    iget-object v6, v6, Lj1/d;->b:Ljava/lang/String;

    .line 412
    .line 413
    const/4 v7, 0x2

    .line 414
    new-array v8, v7, [Ljava/lang/Object;

    .line 415
    .line 416
    const/4 v9, 0x0

    .line 417
    aput-object v5, v8, v9

    .line 418
    .line 419
    const/4 v5, 0x1

    .line 420
    aput-object v6, v8, v5

    .line 421
    .line 422
    const-string v5, "Offset: %d, tagName: %s"

    .line 423
    .line 424
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    :goto_10
    const-wide/16 v5, 0x0

    .line 428
    .line 429
    goto :goto_11

    .line 430
    :cond_1a
    const/4 v7, 0x2

    .line 431
    goto :goto_10

    .line 432
    :goto_11
    cmp-long v8, v3, v5

    .line 433
    .line 434
    if-lez v8, :cond_1c

    .line 435
    .line 436
    long-to-int v5, v3

    .line 437
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 438
    .line 439
    .line 440
    move-result-object v5

    .line 441
    move-object/from16 v8, v24

    .line 442
    .line 443
    invoke-virtual {v8, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v5

    .line 447
    if-nez v5, :cond_1b

    .line 448
    .line 449
    invoke-virtual {v1, v3, v4}, Lj1/f;->A(J)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    invoke-virtual {v0, v1, v2}, Lj1/g;->u(Lj1/f;I)V

    .line 457
    .line 458
    .line 459
    :cond_1b
    :goto_12
    move-wide/from16 v3, v26

    .line 460
    .line 461
    goto :goto_13

    .line 462
    :cond_1c
    move-object/from16 v8, v24

    .line 463
    .line 464
    goto :goto_12

    .line 465
    :goto_13
    invoke-virtual {v1, v3, v4}, Lj1/f;->A(J)V

    .line 466
    .line 467
    .line 468
    move-object/from16 v24, v8

    .line 469
    .line 470
    goto/16 :goto_b

    .line 471
    .line 472
    :cond_1d
    move-object/from16 v8, v24

    .line 473
    .line 474
    move-wide/from16 v3, v26

    .line 475
    .line 476
    const/4 v7, 0x2

    .line 477
    iget v2, v1, Lj1/b;->c:I

    .line 478
    .line 479
    iget v9, v0, Lj1/g;->i:I

    .line 480
    .line 481
    add-int/2addr v2, v9

    .line 482
    move-wide/from16 v9, v17

    .line 483
    .line 484
    long-to-int v10, v9

    .line 485
    new-array v9, v10, [B

    .line 486
    .line 487
    invoke-virtual {v1, v9}, Lj1/b;->readFully([B)V

    .line 488
    .line 489
    .line 490
    new-instance v10, Lj1/c;

    .line 491
    .line 492
    move-object/from16 v24, v8

    .line 493
    .line 494
    int-to-long v7, v2

    .line 495
    move-object/from16 v17, v10

    .line 496
    .line 497
    move-wide/from16 v18, v7

    .line 498
    .line 499
    move-object/from16 v20, v9

    .line 500
    .line 501
    move/from16 v21, v14

    .line 502
    .line 503
    move/from16 v22, v15

    .line 504
    .line 505
    invoke-direct/range {v17 .. v22}, Lj1/c;-><init>(J[BII)V

    .line 506
    .line 507
    .line 508
    aget-object v2, v12, p2

    .line 509
    .line 510
    iget-object v7, v6, Lj1/d;->b:Ljava/lang/String;

    .line 511
    .line 512
    invoke-virtual {v2, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    iget-object v2, v6, Lj1/d;->b:Ljava/lang/String;

    .line 516
    .line 517
    const-string v6, "DNGVersion"

    .line 518
    .line 519
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    move-result v6

    .line 523
    if-eqz v6, :cond_1e

    .line 524
    .line 525
    const/4 v6, 0x3

    .line 526
    iput v6, v0, Lj1/g;->d:I

    .line 527
    .line 528
    goto :goto_14

    .line 529
    :cond_1e
    const/4 v6, 0x3

    .line 530
    :goto_14
    const-string v7, "Make"

    .line 531
    .line 532
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    move-result v7

    .line 536
    if-nez v7, :cond_1f

    .line 537
    .line 538
    const-string v7, "Model"

    .line 539
    .line 540
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    move-result v7

    .line 544
    if-eqz v7, :cond_20

    .line 545
    .line 546
    :cond_1f
    iget-object v7, v0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 547
    .line 548
    invoke-virtual {v10, v7}, Lj1/c;->f(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v7

    .line 552
    const-string v8, "PENTAX"

    .line 553
    .line 554
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 555
    .line 556
    .line 557
    move-result v7

    .line 558
    if-nez v7, :cond_21

    .line 559
    .line 560
    :cond_20
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result v2

    .line 564
    if-eqz v2, :cond_22

    .line 565
    .line 566
    iget-object v2, v0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 567
    .line 568
    invoke-virtual {v10, v2}, Lj1/c;->e(Ljava/nio/ByteOrder;)I

    .line 569
    .line 570
    .line 571
    move-result v2

    .line 572
    const v5, 0xffff

    .line 573
    .line 574
    .line 575
    if-ne v2, v5, :cond_22

    .line 576
    .line 577
    :cond_21
    const/16 v2, 0x8

    .line 578
    .line 579
    iput v2, v0, Lj1/g;->d:I

    .line 580
    .line 581
    :cond_22
    iget v2, v1, Lj1/b;->c:I

    .line 582
    .line 583
    int-to-long v7, v2

    .line 584
    cmp-long v2, v7, v3

    .line 585
    .line 586
    if-eqz v2, :cond_23

    .line 587
    .line 588
    invoke-virtual {v1, v3, v4}, Lj1/f;->A(J)V

    .line 589
    .line 590
    .line 591
    :cond_23
    const/4 v2, 0x1

    .line 592
    :goto_15
    add-int/lit8 v11, v25, 0x1

    .line 593
    .line 594
    int-to-short v11, v11

    .line 595
    move/from16 v2, p2

    .line 596
    .line 597
    move/from16 v9, v23

    .line 598
    .line 599
    move-object/from16 v10, v24

    .line 600
    .line 601
    const/4 v5, 0x5

    .line 602
    goto/16 :goto_0

    .line 603
    .line 604
    :cond_24
    move-object/from16 v24, v10

    .line 605
    .line 606
    const/4 v2, 0x1

    .line 607
    invoke-virtual/range {p1 .. p1}, Lj1/b;->readInt()I

    .line 608
    .line 609
    .line 610
    move-result v3

    .line 611
    if-eqz v13, :cond_25

    .line 612
    .line 613
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 614
    .line 615
    .line 616
    move-result-object v4

    .line 617
    new-array v2, v2, [Ljava/lang/Object;

    .line 618
    .line 619
    const/4 v5, 0x0

    .line 620
    aput-object v4, v2, v5

    .line 621
    .line 622
    const-string v4, "nextIfdOffset: %d"

    .line 623
    .line 624
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    :cond_25
    int-to-long v4, v3

    .line 628
    const-wide/16 v6, 0x0

    .line 629
    .line 630
    cmp-long v2, v4, v6

    .line 631
    .line 632
    if-lez v2, :cond_27

    .line 633
    .line 634
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 635
    .line 636
    .line 637
    move-result-object v2

    .line 638
    move-object/from16 v3, v24

    .line 639
    .line 640
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 641
    .line 642
    .line 643
    move-result v2

    .line 644
    if-nez v2, :cond_27

    .line 645
    .line 646
    invoke-virtual {v1, v4, v5}, Lj1/f;->A(J)V

    .line 647
    .line 648
    .line 649
    const/4 v2, 0x4

    .line 650
    aget-object v3, v12, v2

    .line 651
    .line 652
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 653
    .line 654
    .line 655
    move-result v3

    .line 656
    if-eqz v3, :cond_26

    .line 657
    .line 658
    invoke-virtual {v0, v1, v2}, Lj1/g;->u(Lj1/f;I)V

    .line 659
    .line 660
    .line 661
    goto :goto_16

    .line 662
    :cond_26
    const/4 v2, 0x5

    .line 663
    aget-object v3, v12, v2

    .line 664
    .line 665
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 666
    .line 667
    .line 668
    move-result v3

    .line 669
    if-eqz v3, :cond_27

    .line 670
    .line 671
    invoke-virtual {v0, v1, v2}, Lj1/g;->u(Lj1/f;I)V

    .line 672
    .line 673
    .line 674
    :cond_27
    :goto_16
    return-void
.end method

.method public final v(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lj1/g;->e:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v1, v0, p2

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    aget-object v1, v0, p2

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    aget-object v1, v0, p2

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    aget-object p2, v0, p2

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final w(Lj1/b;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lj1/g;->e:[Ljava/util/HashMap;

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    aget-object v2, v2, v3

    .line 9
    .line 10
    const-string v3, "Compression"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Lj1/c;

    .line 17
    .line 18
    if-eqz v3, :cond_e

    .line 19
    .line 20
    iget-object v4, v0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Lj1/c;->e(Ljava/nio/ByteOrder;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x1

    .line 27
    const/4 v5, 0x6

    .line 28
    if-eq v3, v4, :cond_1

    .line 29
    .line 30
    if-eq v3, v5, :cond_0

    .line 31
    .line 32
    const/4 v6, 0x7

    .line 33
    if-eq v3, v6, :cond_1

    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v0, v1, v2}, Lj1/g;->n(Lj1/b;Ljava/util/HashMap;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :cond_1
    const-string v3, "BitsPerSample"

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lj1/c;

    .line 49
    .line 50
    if-eqz v3, :cond_f

    .line 51
    .line 52
    iget-object v6, v0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 53
    .line 54
    invoke-virtual {v3, v6}, Lj1/c;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, [I

    .line 59
    .line 60
    sget-object v6, Lj1/g;->n:[I

    .line 61
    .line 62
    invoke-static {v6, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-eqz v7, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget v7, v0, Lj1/g;->d:I

    .line 70
    .line 71
    const/4 v8, 0x3

    .line 72
    if-ne v7, v8, :cond_f

    .line 73
    .line 74
    const-string v7, "PhotometricInterpretation"

    .line 75
    .line 76
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    check-cast v7, Lj1/c;

    .line 81
    .line 82
    if-eqz v7, :cond_f

    .line 83
    .line 84
    iget-object v8, v0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 85
    .line 86
    invoke-virtual {v7, v8}, Lj1/c;->e(Ljava/nio/ByteOrder;)I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-ne v7, v4, :cond_3

    .line 91
    .line 92
    sget-object v8, Lj1/g;->o:[I

    .line 93
    .line 94
    invoke-static {v3, v8}, Ljava/util/Arrays;->equals([I[I)Z

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    if-nez v8, :cond_4

    .line 99
    .line 100
    :cond_3
    if-ne v7, v5, :cond_f

    .line 101
    .line 102
    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([I[I)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_f

    .line 107
    .line 108
    :cond_4
    :goto_0
    const-string v3, "StripOffsets"

    .line 109
    .line 110
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Lj1/c;

    .line 115
    .line 116
    const-string v5, "StripByteCounts"

    .line 117
    .line 118
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Lj1/c;

    .line 123
    .line 124
    if-eqz v3, :cond_f

    .line 125
    .line 126
    if-eqz v2, :cond_f

    .line 127
    .line 128
    iget-object v5, v0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 129
    .line 130
    invoke-virtual {v3, v5}, Lj1/c;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-static {v3}, La9/o;->y(Ljava/io/Serializable;)[J

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    iget-object v5, v0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 139
    .line 140
    invoke-virtual {v2, v5}, Lj1/c;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-static {v2}, La9/o;->y(Ljava/io/Serializable;)[J

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    if-eqz v3, :cond_f

    .line 149
    .line 150
    array-length v5, v3

    .line 151
    if-nez v5, :cond_5

    .line 152
    .line 153
    goto/16 :goto_3

    .line 154
    .line 155
    :cond_5
    if-eqz v2, :cond_f

    .line 156
    .line 157
    array-length v5, v2

    .line 158
    if-nez v5, :cond_6

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_6
    array-length v5, v3

    .line 162
    array-length v6, v2

    .line 163
    if-eq v5, v6, :cond_7

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_7
    array-length v5, v2

    .line 167
    const/4 v6, 0x0

    .line 168
    const-wide/16 v7, 0x0

    .line 169
    .line 170
    const/4 v9, 0x0

    .line 171
    :goto_1
    if-ge v9, v5, :cond_8

    .line 172
    .line 173
    aget-wide v10, v2, v9

    .line 174
    .line 175
    add-long/2addr v7, v10

    .line 176
    add-int/lit8 v9, v9, 0x1

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_8
    long-to-int v5, v7

    .line 180
    new-array v5, v5, [B

    .line 181
    .line 182
    iput-boolean v4, v0, Lj1/g;->h:Z

    .line 183
    .line 184
    const/4 v7, 0x0

    .line 185
    const/4 v8, 0x0

    .line 186
    const/4 v9, 0x0

    .line 187
    :goto_2
    array-length v10, v3

    .line 188
    if-ge v7, v10, :cond_d

    .line 189
    .line 190
    aget-wide v10, v3, v7

    .line 191
    .line 192
    long-to-int v11, v10

    .line 193
    aget-wide v12, v2, v7

    .line 194
    .line 195
    long-to-int v10, v12

    .line 196
    array-length v12, v3

    .line 197
    sub-int/2addr v12, v4

    .line 198
    if-ge v7, v12, :cond_9

    .line 199
    .line 200
    add-int v12, v11, v10

    .line 201
    .line 202
    int-to-long v12, v12

    .line 203
    add-int/lit8 v14, v7, 0x1

    .line 204
    .line 205
    aget-wide v14, v3, v14

    .line 206
    .line 207
    cmp-long v16, v12, v14

    .line 208
    .line 209
    if-eqz v16, :cond_9

    .line 210
    .line 211
    iput-boolean v6, v0, Lj1/g;->h:Z

    .line 212
    .line 213
    :cond_9
    sub-int/2addr v11, v8

    .line 214
    if-gez v11, :cond_a

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_a
    int-to-long v12, v11

    .line 218
    invoke-virtual {v1, v12, v13}, Ljava/io/InputStream;->skip(J)J

    .line 219
    .line 220
    .line 221
    move-result-wide v14

    .line 222
    cmp-long v16, v14, v12

    .line 223
    .line 224
    if-eqz v16, :cond_b

    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_b
    add-int/2addr v8, v11

    .line 228
    new-array v11, v10, [B

    .line 229
    .line 230
    invoke-virtual {v1, v11}, Ljava/io/InputStream;->read([B)I

    .line 231
    .line 232
    .line 233
    move-result v12

    .line 234
    if-eq v12, v10, :cond_c

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_c
    add-int/2addr v8, v10

    .line 238
    invoke-static {v11, v6, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    .line 240
    .line 241
    add-int/2addr v9, v10

    .line 242
    add-int/lit8 v7, v7, 0x1

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_d
    iget-boolean v1, v0, Lj1/g;->h:Z

    .line 246
    .line 247
    if-eqz v1, :cond_f

    .line 248
    .line 249
    aget-wide v1, v3, v6

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_e
    invoke-virtual {v0, v1, v2}, Lj1/g;->n(Lj1/b;Ljava/util/HashMap;)V

    .line 253
    .line 254
    .line 255
    :cond_f
    :goto_3
    return-void
.end method

.method public final x(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lj1/g;->e:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_3

    .line 10
    .line 11
    aget-object v1, v0, p2

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    aget-object v1, v0, p1

    .line 21
    .line 22
    const-string v2, "ImageLength"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lj1/c;

    .line 29
    .line 30
    aget-object v3, v0, p1

    .line 31
    .line 32
    const-string v4, "ImageWidth"

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lj1/c;

    .line 39
    .line 40
    aget-object v5, v0, p2

    .line 41
    .line 42
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lj1/c;

    .line 47
    .line 48
    aget-object v5, v0, p2

    .line 49
    .line 50
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Lj1/c;

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    if-nez v3, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    if-eqz v2, :cond_3

    .line 62
    .line 63
    if-nez v4, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object v5, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 67
    .line 68
    invoke-virtual {v1, v5}, Lj1/c;->e(Ljava/nio/ByteOrder;)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iget-object v5, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 73
    .line 74
    invoke-virtual {v3, v5}, Lj1/c;->e(Ljava/nio/ByteOrder;)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    iget-object v5, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 79
    .line 80
    invoke-virtual {v2, v5}, Lj1/c;->e(Ljava/nio/ByteOrder;)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    iget-object v5, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 85
    .line 86
    invoke-virtual {v4, v5}, Lj1/c;->e(Ljava/nio/ByteOrder;)I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-ge v1, v2, :cond_3

    .line 91
    .line 92
    if-ge v3, v4, :cond_3

    .line 93
    .line 94
    aget-object v1, v0, p1

    .line 95
    .line 96
    aget-object v2, v0, p2

    .line 97
    .line 98
    aput-object v2, v0, p1

    .line 99
    .line 100
    aput-object v1, v0, p2

    .line 101
    .line 102
    :cond_3
    :goto_0
    return-void
.end method

.method public final y(Lj1/f;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lj1/g;->e:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v1, v0, p2

    .line 4
    .line 5
    const-string v2, "DefaultCropSize"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lj1/c;

    .line 12
    .line 13
    aget-object v2, v0, p2

    .line 14
    .line 15
    const-string v3, "SensorTopBorder"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lj1/c;

    .line 22
    .line 23
    aget-object v3, v0, p2

    .line 24
    .line 25
    const-string v4, "SensorLeftBorder"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lj1/c;

    .line 32
    .line 33
    aget-object v4, v0, p2

    .line 34
    .line 35
    const-string v5, "SensorBottomBorder"

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lj1/c;

    .line 42
    .line 43
    aget-object v5, v0, p2

    .line 44
    .line 45
    const-string v6, "SensorRightBorder"

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Lj1/c;

    .line 52
    .line 53
    const-string v6, "ImageLength"

    .line 54
    .line 55
    const-string v7, "ImageWidth"

    .line 56
    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    iget p1, v1, Lj1/c;->a:I

    .line 60
    .line 61
    const/4 v2, 0x5

    .line 62
    const/4 v3, 0x1

    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x2

    .line 65
    if-ne p1, v2, :cond_2

    .line 66
    .line 67
    iget-object p1, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 68
    .line 69
    invoke-virtual {v1, p1}, Lj1/c;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, [Lj1/e;

    .line 74
    .line 75
    if-eqz p1, :cond_1

    .line 76
    .line 77
    array-length v1, p1

    .line 78
    if-eq v1, v5, :cond_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    aget-object v1, p1, v4

    .line 82
    .line 83
    iget-object v2, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 84
    .line 85
    invoke-static {v1, v2}, Lj1/c;->b(Lj1/e;Ljava/nio/ByteOrder;)Lj1/c;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    aget-object p1, p1, v3

    .line 90
    .line 91
    iget-object v2, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 92
    .line 93
    invoke-static {p1, v2}, Lj1/c;->b(Lj1/e;Ljava/nio/ByteOrder;)Lj1/c;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_2
    iget-object p1, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 103
    .line 104
    invoke-virtual {v1, p1}, Lj1/c;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, [I

    .line 109
    .line 110
    if-eqz p1, :cond_4

    .line 111
    .line 112
    array-length v1, p1

    .line 113
    if-eq v1, v5, :cond_3

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    aget v1, p1, v4

    .line 117
    .line 118
    iget-object v2, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 119
    .line 120
    invoke-static {v1, v2}, Lj1/c;->c(ILjava/nio/ByteOrder;)Lj1/c;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    aget p1, p1, v3

    .line 125
    .line 126
    iget-object v2, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 127
    .line 128
    invoke-static {p1, v2}, Lj1/c;->c(ILjava/nio/ByteOrder;)Lj1/c;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    :goto_1
    aget-object v2, v0, p2

    .line 133
    .line 134
    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    aget-object p2, v0, p2

    .line 138
    .line 139
    invoke-virtual {p2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    goto/16 :goto_3

    .line 143
    .line 144
    :cond_4
    :goto_2
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_5
    if-eqz v2, :cond_6

    .line 149
    .line 150
    if-eqz v3, :cond_6

    .line 151
    .line 152
    if-eqz v4, :cond_6

    .line 153
    .line 154
    if-eqz v5, :cond_6

    .line 155
    .line 156
    iget-object p1, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 157
    .line 158
    invoke-virtual {v2, p1}, Lj1/c;->e(Ljava/nio/ByteOrder;)I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    iget-object v1, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 163
    .line 164
    invoke-virtual {v4, v1}, Lj1/c;->e(Ljava/nio/ByteOrder;)I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    iget-object v2, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 169
    .line 170
    invoke-virtual {v5, v2}, Lj1/c;->e(Ljava/nio/ByteOrder;)I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    iget-object v4, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 175
    .line 176
    invoke-virtual {v3, v4}, Lj1/c;->e(Ljava/nio/ByteOrder;)I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-le v1, p1, :cond_8

    .line 181
    .line 182
    if-le v2, v3, :cond_8

    .line 183
    .line 184
    sub-int/2addr v1, p1

    .line 185
    sub-int/2addr v2, v3

    .line 186
    iget-object p1, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 187
    .line 188
    invoke-static {v1, p1}, Lj1/c;->c(ILjava/nio/ByteOrder;)Lj1/c;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    iget-object v1, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 193
    .line 194
    invoke-static {v2, v1}, Lj1/c;->c(ILjava/nio/ByteOrder;)Lj1/c;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    aget-object v2, v0, p2

    .line 199
    .line 200
    invoke-virtual {v2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    aget-object p1, v0, p2

    .line 204
    .line 205
    invoke-virtual {p1, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_6
    aget-object v1, v0, p2

    .line 210
    .line 211
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    check-cast v1, Lj1/c;

    .line 216
    .line 217
    aget-object v2, v0, p2

    .line 218
    .line 219
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    check-cast v2, Lj1/c;

    .line 224
    .line 225
    if-eqz v1, :cond_7

    .line 226
    .line 227
    if-nez v2, :cond_8

    .line 228
    .line 229
    :cond_7
    aget-object v1, v0, p2

    .line 230
    .line 231
    const-string v2, "JPEGInterchangeFormat"

    .line 232
    .line 233
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    check-cast v1, Lj1/c;

    .line 238
    .line 239
    aget-object v0, v0, p2

    .line 240
    .line 241
    const-string v2, "JPEGInterchangeFormatLength"

    .line 242
    .line 243
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    check-cast v0, Lj1/c;

    .line 248
    .line 249
    if-eqz v1, :cond_8

    .line 250
    .line 251
    if-eqz v0, :cond_8

    .line 252
    .line 253
    iget-object v0, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 254
    .line 255
    invoke-virtual {v1, v0}, Lj1/c;->e(Ljava/nio/ByteOrder;)I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    iget-object v2, p0, Lj1/g;->g:Ljava/nio/ByteOrder;

    .line 260
    .line 261
    invoke-virtual {v1, v2}, Lj1/c;->e(Ljava/nio/ByteOrder;)I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    int-to-long v2, v0

    .line 266
    invoke-virtual {p1, v2, v3}, Lj1/f;->A(J)V

    .line 267
    .line 268
    .line 269
    new-array v1, v1, [B

    .line 270
    .line 271
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 272
    .line 273
    .line 274
    new-instance p1, Lj1/b;

    .line 275
    .line 276
    invoke-direct {p1, v1}, Lj1/b;-><init>([B)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0, p1, v0, p2}, Lj1/g;->f(Lj1/b;II)V

    .line 280
    .line 281
    .line 282
    :cond_8
    :goto_3
    return-void
.end method

.method public final z()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x5

    .line 3
    invoke-virtual {p0, v0, v1}, Lj1/g;->x(II)V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    invoke-virtual {p0, v0, v2}, Lj1/g;->x(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, v2}, Lj1/g;->x(II)V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lj1/g;->e:[Ljava/util/HashMap;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    aget-object v5, v3, v4

    .line 17
    .line 18
    const-string v6, "PixelXDimension"

    .line 19
    .line 20
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lj1/c;

    .line 25
    .line 26
    aget-object v4, v3, v4

    .line 27
    .line 28
    const-string v6, "PixelYDimension"

    .line 29
    .line 30
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lj1/c;

    .line 35
    .line 36
    const-string v6, "ImageLength"

    .line 37
    .line 38
    const-string v7, "ImageWidth"

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    aget-object v8, v3, v0

    .line 45
    .line 46
    invoke-virtual {v8, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    aget-object v5, v3, v0

    .line 50
    .line 51
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_0
    aget-object v4, v3, v2

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    aget-object v4, v3, v1

    .line 63
    .line 64
    invoke-virtual {p0, v4}, Lj1/g;->o(Ljava/util/HashMap;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    aget-object v4, v3, v1

    .line 71
    .line 72
    aput-object v4, v3, v2

    .line 73
    .line 74
    new-instance v4, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    aput-object v4, v3, v1

    .line 80
    .line 81
    :cond_1
    aget-object v3, v3, v2

    .line 82
    .line 83
    invoke-virtual {p0, v3}, Lj1/g;->o(Ljava/util/HashMap;)Z

    .line 84
    .line 85
    .line 86
    const-string v3, "ThumbnailOrientation"

    .line 87
    .line 88
    const-string v4, "Orientation"

    .line 89
    .line 90
    invoke-virtual {p0, v3, v0, v4}, Lj1/g;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v5, "ThumbnailImageLength"

    .line 94
    .line 95
    invoke-virtual {p0, v5, v0, v6}, Lj1/g;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v8, "ThumbnailImageWidth"

    .line 99
    .line 100
    invoke-virtual {p0, v8, v0, v7}, Lj1/g;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v3, v1, v4}, Lj1/g;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v5, v1, v6}, Lj1/g;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v8, v1, v7}, Lj1/g;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v4, v2, v3}, Lj1/g;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v6, v2, v5}, Lj1/g;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v7, v2, v8}, Lj1/g;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.class public final Landroidx/room/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;
.implements Lob/a;
.implements Ll2/i;
.implements Lha/y6;
.implements Lcom/hjq/permissions/OnPermissionCallback;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IC)V
    .locals 1

    iput p1, p0, Landroidx/room/s;->a:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "HmacSHA1"

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x1000

    invoke-direct {p2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object p2, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 20
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 21
    invoke-virtual {p1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result p1

    iput p1, p0, Landroidx/room/s;->b:I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 22
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 23
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance p1, La0/n;

    invoke-direct {p1}, La0/n;-><init>()V

    iput-object p1, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    const/16 p1, 0x4b

    .line 26
    iput p1, p0, Landroidx/room/s;->b:I

    return-void

    .line 27
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 28
    iput p1, p0, Landroidx/room/s;->b:I

    return-void

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(II)V
    .locals 0

    iput p2, p0, Landroidx/room/s;->a:I

    sparse-switch p2, :sswitch_data_0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Landroidx/room/s;->b:I

    return-void

    .line 59
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p1, p1, 0x2

    .line 60
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Landroidx/room/s;->b:I

    return-void

    .line 62
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 63
    iput p2, p0, Landroidx/room/s;->b:I

    .line 64
    new-array p2, p1, [I

    iput-object p2, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 65
    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/util/ArrayList;[B)V
    .locals 0

    const/16 p1, 0x9

    iput p1, p0, Landroidx/room/s;->a:I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p3, p0, Landroidx/room/s;->b:I

    if-nez p4, :cond_0

    .line 72
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 74
    iput-object p5, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILu1/d0;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Landroidx/room/s;->a:I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroidx/room/s;->b:I

    .line 39
    iput-object p2, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 40
    new-instance p1, Lu1/q;

    invoke-direct {p1}, Lu1/q;-><init>()V

    iput-object p1, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(La2/u0;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/room/s;->a:I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Landroidx/room/s;->b:I

    return-void
.end method

.method public constructor <init>(La6/i;)V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Landroidx/room/s;->a:I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, La1/i;

    const/16 v1, 0x1d

    invoke-direct {v0, v1, p0}, La1/i;-><init>(ILjava/lang/Object;)V

    const/16 v1, 0x96

    .line 77
    invoke-static {v1, v0}, Lb6/c;->a(ILb6/a;)Lv3/f;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/room/c;Landroidx/room/q;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/room/s;->a:I

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget v0, p2, Landroidx/room/q;->version:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/room/s;-><init>(II)V

    .line 9
    iput-object p1, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 10
    iput-object p2, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lda/g;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/room/s;->a:I

    iput-object p1, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    iput p2, p0, Landroidx/room/s;->b:I

    iput-object p3, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lda/g;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    iput p4, p0, Landroidx/room/s;->a:I

    iput-object p1, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    iput p3, p0, Landroidx/room/s;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 3
    iput p4, p0, Landroidx/room/s;->a:I

    iput-object p1, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    iput p3, p0, Landroidx/room/s;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ll2/t;I)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Landroidx/room/s;->a:I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 35
    iput p2, p0, Landroidx/room/s;->b:I

    .line 36
    new-instance p1, Ldd/c;

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Ldd/c;-><init>(IZ)V

    iput-object p1, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmb/h;)V
    .locals 2

    const/4 v0, 0x6

    iput v0, p0, Landroidx/room/s;->a:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 13
    new-instance v0, Lmb/c;

    invoke-direct {v0, p1}, Lmb/c;-><init>(Lmb/h;)V

    .line 14
    invoke-static {}, Ljava/text/BreakIterator;->getLineInstance()Ljava/text/BreakIterator;

    move-result-object v1

    iput-object v1, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 15
    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 16
    iget p1, p1, Lmb/h;->c:I

    .line 17
    iput p1, p0, Landroidx/room/s;->b:I

    return-void
.end method

.method public constructor <init>(Lokhttp3/Protocol;ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Landroidx/room/s;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 6
    iput p2, p0, Landroidx/room/s;->b:I

    .line 7
    iput-object p3, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lsh/d;Luh/a;)V
    .locals 9

    const/16 v0, 0x15

    iput v0, p0, Landroidx/room/s;->a:I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget-object v0, p2, Luh/a;->e:Lth/e;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 43
    :cond_0
    sget-object v1, Lwh/n;->b:Ls5/c;

    invoke-virtual {p1, v1}, Lsh/d;->c(Lwh/o;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lth/d;

    .line 44
    sget-object v2, Lwh/n;->a:Ls9/a;

    invoke-virtual {p1, v2}, Lsh/d;->c(Lwh/o;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsh/o;

    .line 45
    invoke-static {v1, v0}, Lif/a;->z(Ljava/lang/Object;Ljava/lang/Comparable;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v0, v4

    .line 46
    :cond_1
    invoke-static {v2, v4}, Lif/a;->z(Ljava/lang/Object;Ljava/lang/Comparable;)Z

    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    if-eqz v0, :cond_3

    move-object v3, v0

    goto :goto_0

    :cond_3
    move-object v3, v1

    :goto_0
    if-eqz v0, :cond_8

    .line 47
    sget-object v5, Lwh/a;->x:Lwh/a;

    invoke-virtual {p1, v5}, Lsh/d;->d(Lwh/m;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 48
    move-object v0, v3

    check-cast v0, Lth/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-static {p1}, Lsh/e;->q(Lwh/k;)Lsh/e;

    move-result-object v4

    goto :goto_3

    .line 50
    :cond_4
    sget-object v5, Lth/e;->a:Lth/e;

    if-ne v0, v5, :cond_5

    if-eqz v1, :cond_8

    .line 51
    :cond_5
    invoke-static {}, Lwh/a;->values()[Lwh/a;

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_8

    aget-object v7, v1, v6

    .line 52
    invoke-virtual {v7}, Lwh/a;->b()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p1, v7}, Lsh/d;->d(Lwh/m;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_2

    .line 53
    :cond_6
    new-instance p2, Lsh/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid override chronology for temporal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lsh/a;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 54
    :cond_8
    :goto_3
    new-instance v0, Luh/n;

    invoke-direct {v0, v4, p1, v3, v2}, Luh/n;-><init>(Lsh/e;Lsh/d;Lth/d;Lsh/o;)V

    move-object p1, v0

    .line 55
    :goto_4
    iput-object p1, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 56
    iget-object p1, p2, Luh/a;->c:Luh/p;

    iput-object p1, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lt7/m;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Landroidx/room/s;->a:I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 68
    sget-object p1, Lt7/c;->b:Lt7/c;

    iput-object p1, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    const p1, 0x7fffffff

    .line 69
    iput p1, p0, Landroidx/room/s;->b:I

    return-void
.end method

.method public static c(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/room/s;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "gradient"

    .line 6
    .line 7
    const/4 v3, 0x5

    .line 8
    invoke-virtual/range {p0 .. p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    const/4 v7, 0x2

    .line 21
    const/4 v8, 0x1

    .line 22
    if-eq v6, v7, :cond_0

    .line 23
    .line 24
    if-eq v6, v8, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-ne v6, v7, :cond_21

    .line 28
    .line 29
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v10

    .line 41
    if-nez v10, :cond_2

    .line 42
    .line 43
    const-string v2, "selector"

    .line 44
    .line 45
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-static {v0, v4, v5, v1}, Lo0/c;->b(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Landroidx/room/s;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-direct {v1, v9, v0, v2, v3}, Landroidx/room/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v2, ": unsupported complex color tag "

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_20

    .line 104
    .line 105
    sget-object v2, Ll0/a;->d:[I

    .line 106
    .line 107
    invoke-static {v0, v1, v5, v2}, Lo0/b;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    const-string v6, "startX"

    .line 112
    .line 113
    invoke-static {v4, v6}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    const/4 v10, 0x0

    .line 118
    if-nez v6, :cond_3

    .line 119
    .line 120
    const/4 v12, 0x0

    .line 121
    goto :goto_1

    .line 122
    :cond_3
    const/16 v6, 0x8

    .line 123
    .line 124
    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    move v12, v6

    .line 129
    :goto_1
    const-string v6, "startY"

    .line 130
    .line 131
    invoke-static {v4, v6}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-nez v6, :cond_4

    .line 136
    .line 137
    const/4 v13, 0x0

    .line 138
    goto :goto_2

    .line 139
    :cond_4
    const/16 v6, 0x9

    .line 140
    .line 141
    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    move v13, v6

    .line 146
    :goto_2
    const-string v6, "endX"

    .line 147
    .line 148
    invoke-static {v4, v6}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-nez v6, :cond_5

    .line 153
    .line 154
    const/4 v14, 0x0

    .line 155
    goto :goto_3

    .line 156
    :cond_5
    const/16 v6, 0xa

    .line 157
    .line 158
    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    move v14, v6

    .line 163
    :goto_3
    const-string v6, "endY"

    .line 164
    .line 165
    invoke-static {v4, v6}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    if-nez v6, :cond_6

    .line 170
    .line 171
    const/4 v15, 0x0

    .line 172
    goto :goto_4

    .line 173
    :cond_6
    const/16 v6, 0xb

    .line 174
    .line 175
    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    move v15, v6

    .line 180
    :goto_4
    const-string v6, "centerX"

    .line 181
    .line 182
    invoke-static {v4, v6}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    const/4 v11, 0x3

    .line 187
    if-nez v6, :cond_7

    .line 188
    .line 189
    const/4 v6, 0x0

    .line 190
    goto :goto_5

    .line 191
    :cond_7
    invoke-virtual {v2, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    :goto_5
    const-string v9, "centerY"

    .line 196
    .line 197
    invoke-static {v4, v9}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    if-nez v9, :cond_8

    .line 202
    .line 203
    const/4 v9, 0x0

    .line 204
    goto :goto_6

    .line 205
    :cond_8
    const/4 v9, 0x4

    .line 206
    invoke-virtual {v2, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    :goto_6
    const-string v11, "type"

    .line 211
    .line 212
    invoke-static {v4, v11}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v11

    .line 216
    const/4 v3, 0x0

    .line 217
    if-nez v11, :cond_9

    .line 218
    .line 219
    const/4 v11, 0x0

    .line 220
    goto :goto_7

    .line 221
    :cond_9
    invoke-virtual {v2, v7, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 222
    .line 223
    .line 224
    move-result v11

    .line 225
    :goto_7
    const-string v7, "startColor"

    .line 226
    .line 227
    invoke-static {v4, v7}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    if-nez v7, :cond_a

    .line 232
    .line 233
    const/4 v7, 0x0

    .line 234
    goto :goto_8

    .line 235
    :cond_a
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    :goto_8
    const-string v10, "centerColor"

    .line 240
    .line 241
    invoke-static {v4, v10}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 242
    .line 243
    .line 244
    move-result v19

    .line 245
    invoke-static {v4, v10}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 246
    .line 247
    .line 248
    move-result v10

    .line 249
    if-nez v10, :cond_b

    .line 250
    .line 251
    const/4 v10, 0x0

    .line 252
    goto :goto_9

    .line 253
    :cond_b
    const/4 v10, 0x7

    .line 254
    invoke-virtual {v2, v10, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 255
    .line 256
    .line 257
    move-result v10

    .line 258
    :goto_9
    const-string v3, "endColor"

    .line 259
    .line 260
    invoke-static {v4, v3}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    if-nez v3, :cond_c

    .line 265
    .line 266
    const/4 v3, 0x0

    .line 267
    const/16 v24, 0x0

    .line 268
    .line 269
    goto :goto_a

    .line 270
    :cond_c
    const/4 v3, 0x0

    .line 271
    invoke-virtual {v2, v8, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 272
    .line 273
    .line 274
    move-result v23

    .line 275
    move/from16 v24, v23

    .line 276
    .line 277
    :goto_a
    const-string v8, "tileMode"

    .line 278
    .line 279
    invoke-static {v4, v8}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 280
    .line 281
    .line 282
    move-result v8

    .line 283
    if-nez v8, :cond_d

    .line 284
    .line 285
    goto :goto_b

    .line 286
    :cond_d
    const/4 v8, 0x6

    .line 287
    invoke-virtual {v2, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 288
    .line 289
    .line 290
    move-result v8

    .line 291
    move v3, v8

    .line 292
    :goto_b
    const-string v8, "gradientRadius"

    .line 293
    .line 294
    invoke-static {v4, v8}, Lo0/b;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 295
    .line 296
    .line 297
    move-result v8

    .line 298
    if-nez v8, :cond_e

    .line 299
    .line 300
    move/from16 v21, v6

    .line 301
    .line 302
    const/16 v22, 0x0

    .line 303
    .line 304
    goto :goto_c

    .line 305
    :cond_e
    move/from16 v21, v6

    .line 306
    .line 307
    const/4 v6, 0x5

    .line 308
    const/4 v8, 0x0

    .line 309
    invoke-virtual {v2, v6, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 310
    .line 311
    .line 312
    move-result v22

    .line 313
    :goto_c
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 314
    .line 315
    .line 316
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    const/4 v6, 0x1

    .line 321
    add-int/2addr v2, v6

    .line 322
    new-instance v8, Ljava/util/ArrayList;

    .line 323
    .line 324
    const/16 v6, 0x14

    .line 325
    .line 326
    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 327
    .line 328
    .line 329
    move/from16 v25, v9

    .line 330
    .line 331
    new-instance v9, Ljava/util/ArrayList;

    .line 332
    .line 333
    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 334
    .line 335
    .line 336
    :goto_d
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 337
    .line 338
    .line 339
    move-result v6

    .line 340
    move/from16 v26, v15

    .line 341
    .line 342
    const/4 v15, 0x1

    .line 343
    if-eq v6, v15, :cond_14

    .line 344
    .line 345
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 346
    .line 347
    .line 348
    move-result v15

    .line 349
    move/from16 v27, v14

    .line 350
    .line 351
    if-ge v15, v2, :cond_f

    .line 352
    .line 353
    const/4 v14, 0x3

    .line 354
    if-eq v6, v14, :cond_15

    .line 355
    .line 356
    :cond_f
    const/4 v14, 0x2

    .line 357
    if-eq v6, v14, :cond_11

    .line 358
    .line 359
    :cond_10
    :goto_e
    move/from16 v15, v26

    .line 360
    .line 361
    move/from16 v14, v27

    .line 362
    .line 363
    goto :goto_d

    .line 364
    :cond_11
    if-gt v15, v2, :cond_10

    .line 365
    .line 366
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v6

    .line 370
    const-string v14, "item"

    .line 371
    .line 372
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v6

    .line 376
    if-nez v6, :cond_12

    .line 377
    .line 378
    goto :goto_e

    .line 379
    :cond_12
    sget-object v6, Ll0/a;->e:[I

    .line 380
    .line 381
    invoke-static {v0, v1, v5, v6}, Lo0/b;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    const/4 v14, 0x0

    .line 386
    invoke-virtual {v6, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 387
    .line 388
    .line 389
    move-result v15

    .line 390
    const/4 v14, 0x1

    .line 391
    invoke-virtual {v6, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 392
    .line 393
    .line 394
    move-result v20

    .line 395
    if-eqz v15, :cond_13

    .line 396
    .line 397
    if-eqz v20, :cond_13

    .line 398
    .line 399
    const/4 v15, 0x0

    .line 400
    invoke-virtual {v6, v15, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 401
    .line 402
    .line 403
    move-result v28

    .line 404
    const/4 v15, 0x0

    .line 405
    invoke-virtual {v6, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 406
    .line 407
    .line 408
    move-result v29

    .line 409
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 410
    .line 411
    .line 412
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 413
    .line 414
    .line 415
    move-result-object v6

    .line 416
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 420
    .line 421
    .line 422
    move-result-object v6

    .line 423
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    goto :goto_e

    .line 427
    :cond_13
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 428
    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .line 433
    .line 434
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    const-string v2, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    .line 442
    .line 443
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    throw v0

    .line 454
    :cond_14
    move/from16 v27, v14

    .line 455
    .line 456
    :cond_15
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    if-lez v0, :cond_16

    .line 461
    .line 462
    new-instance v0, Lkf/d;

    .line 463
    .line 464
    invoke-direct {v0, v9, v8}, Lkf/d;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 465
    .line 466
    .line 467
    goto :goto_f

    .line 468
    :cond_16
    const/4 v0, 0x0

    .line 469
    :goto_f
    if-eqz v0, :cond_17

    .line 470
    .line 471
    :goto_10
    const/4 v1, 0x1

    .line 472
    goto :goto_11

    .line 473
    :cond_17
    if-eqz v19, :cond_18

    .line 474
    .line 475
    new-instance v0, Lkf/d;

    .line 476
    .line 477
    move/from16 v1, v24

    .line 478
    .line 479
    invoke-direct {v0, v7, v10, v1}, Lkf/d;-><init>(III)V

    .line 480
    .line 481
    .line 482
    goto :goto_10

    .line 483
    :cond_18
    move/from16 v1, v24

    .line 484
    .line 485
    new-instance v0, Lkf/d;

    .line 486
    .line 487
    invoke-direct {v0, v7, v1}, Lkf/d;-><init>(II)V

    .line 488
    .line 489
    .line 490
    goto :goto_10

    .line 491
    :goto_11
    if-eq v11, v1, :cond_1c

    .line 492
    .line 493
    const/4 v2, 0x2

    .line 494
    if-eq v11, v2, :cond_1b

    .line 495
    .line 496
    new-instance v4, Landroid/graphics/LinearGradient;

    .line 497
    .line 498
    if-eq v3, v1, :cond_1a

    .line 499
    .line 500
    if-eq v3, v2, :cond_19

    .line 501
    .line 502
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 503
    .line 504
    :goto_12
    move-object/from16 v18, v1

    .line 505
    .line 506
    goto :goto_13

    .line 507
    :cond_19
    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 508
    .line 509
    goto :goto_12

    .line 510
    :cond_1a
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 511
    .line 512
    goto :goto_12

    .line 513
    :goto_13
    iget-object v1, v0, Lkf/d;->b:Ljava/lang/Object;

    .line 514
    .line 515
    move-object/from16 v16, v1

    .line 516
    .line 517
    check-cast v16, [I

    .line 518
    .line 519
    iget-object v0, v0, Lkf/d;->c:Ljava/lang/Object;

    .line 520
    .line 521
    move-object/from16 v17, v0

    .line 522
    .line 523
    check-cast v17, [F

    .line 524
    .line 525
    move-object v11, v4

    .line 526
    move/from16 v14, v27

    .line 527
    .line 528
    move/from16 v15, v26

    .line 529
    .line 530
    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 531
    .line 532
    .line 533
    goto :goto_15

    .line 534
    :cond_1b
    new-instance v4, Landroid/graphics/SweepGradient;

    .line 535
    .line 536
    iget-object v1, v0, Lkf/d;->b:Ljava/lang/Object;

    .line 537
    .line 538
    check-cast v1, [I

    .line 539
    .line 540
    iget-object v0, v0, Lkf/d;->c:Ljava/lang/Object;

    .line 541
    .line 542
    check-cast v0, [F

    .line 543
    .line 544
    move/from16 v6, v21

    .line 545
    .line 546
    move/from16 v9, v25

    .line 547
    .line 548
    invoke-direct {v4, v6, v9, v1, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 549
    .line 550
    .line 551
    goto :goto_15

    .line 552
    :cond_1c
    move/from16 v6, v21

    .line 553
    .line 554
    move/from16 v9, v25

    .line 555
    .line 556
    const/4 v1, 0x0

    .line 557
    cmpg-float v1, v22, v1

    .line 558
    .line 559
    if-lez v1, :cond_1f

    .line 560
    .line 561
    new-instance v4, Landroid/graphics/RadialGradient;

    .line 562
    .line 563
    const/4 v1, 0x1

    .line 564
    if-eq v3, v1, :cond_1e

    .line 565
    .line 566
    const/4 v1, 0x2

    .line 567
    if-eq v3, v1, :cond_1d

    .line 568
    .line 569
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 570
    .line 571
    goto :goto_14

    .line 572
    :cond_1d
    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 573
    .line 574
    goto :goto_14

    .line 575
    :cond_1e
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 576
    .line 577
    :goto_14
    iget-object v2, v0, Lkf/d;->b:Ljava/lang/Object;

    .line 578
    .line 579
    move-object/from16 v20, v2

    .line 580
    .line 581
    check-cast v20, [I

    .line 582
    .line 583
    iget-object v0, v0, Lkf/d;->c:Ljava/lang/Object;

    .line 584
    .line 585
    move-object/from16 v21, v0

    .line 586
    .line 587
    check-cast v21, [F

    .line 588
    .line 589
    move-object/from16 v16, v4

    .line 590
    .line 591
    move/from16 v17, v6

    .line 592
    .line 593
    move/from16 v18, v9

    .line 594
    .line 595
    move/from16 v19, v22

    .line 596
    .line 597
    move-object/from16 v22, v1

    .line 598
    .line 599
    invoke-direct/range {v16 .. v22}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 600
    .line 601
    .line 602
    :goto_15
    new-instance v0, Landroidx/room/s;

    .line 603
    .line 604
    const/4 v1, 0x0

    .line 605
    const/4 v2, 0x0

    .line 606
    const/4 v3, 0x5

    .line 607
    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/room/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 608
    .line 609
    .line 610
    return-object v0

    .line 611
    :cond_1f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 612
    .line 613
    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    .line 614
    .line 615
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    throw v0

    .line 619
    :cond_20
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 620
    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    .line 622
    .line 623
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    .line 625
    .line 626
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v2

    .line 630
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    const-string v2, ": invalid gradient color tag "

    .line 634
    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    throw v0

    .line 649
    :cond_21
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 650
    .line 651
    const-string v1, "No start tag found"

    .line 652
    .line 653
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    goto :goto_17

    .line 657
    :goto_16
    throw v0

    .line 658
    :goto_17
    goto :goto_16
.end method

.method public static d(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, ":memory:"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_8

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    if-gt v3, v0, :cond_6

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    move v5, v3

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    move v5, v0

    .line 25
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/16 v6, 0x20

    .line 30
    .line 31
    if-ge v5, v6, :cond_1

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    if-ne v5, v6, :cond_2

    .line 35
    .line 36
    :goto_2
    const/4 v5, 0x1

    .line 37
    goto :goto_3

    .line 38
    :cond_2
    const/4 v5, 0x0

    .line 39
    :goto_3
    if-nez v4, :cond_4

    .line 40
    .line 41
    if-nez v5, :cond_3

    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    if-nez v5, :cond_5

    .line 49
    .line 50
    goto :goto_4

    .line 51
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_6
    :goto_4
    add-int/2addr v0, v1

    .line 55
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_7

    .line 68
    .line 69
    goto :goto_5

    .line 70
    :cond_7
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    :catch_0
    :cond_8
    :goto_5
    return-void
.end method

.method public static r(Ljava/lang/String;)Landroidx/room/s;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    const-string v3, "The separator may not be the empty string."

    .line 13
    .line 14
    invoke-static {v3, v0}, La9/o;->i(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    new-instance v0, Lt7/b;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lt7/b;-><init>(C)V

    .line 30
    .line 31
    .line 32
    new-instance p0, Landroidx/room/s;

    .line 33
    .line 34
    new-instance v1, Ll5/y;

    .line 35
    .line 36
    const/16 v2, 0x11

    .line 37
    .line 38
    invoke-direct {v1, v2, v0}, Ll5/y;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v1}, Landroidx/room/s;-><init>(Lt7/m;)V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_1
    new-instance v0, Landroidx/room/s;

    .line 46
    .line 47
    new-instance v1, Lbd/c;

    .line 48
    .line 49
    const/4 v2, 0x4

    .line 50
    invoke-direct {v1, p0, v2}, Lbd/c;-><init>(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v1}, Landroidx/room/s;-><init>(Lt7/m;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method private final u()V
    .locals 0

    .line 1
    return-void
.end method

.method private final synthetic w()V
    .locals 0

    .line 1
    return-void
.end method

.method private final y()V
    .locals 0

    .line 1
    return-void
.end method

.method public static z(Ljava/lang/String;)Landroidx/room/s;
    .locals 8

    .line 1
    const-string v0, "HTTP/1."

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    const/16 v2, 0x20

    .line 9
    .line 10
    const-string v3, "Unexpected status line: "

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v4, 0x9

    .line 19
    .line 20
    if-lt v0, v4, :cond_2

    .line 21
    .line 22
    const/16 v0, 0x8

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-ne v0, v2, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x7

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/lit8 v0, v0, -0x30

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    if-ne v0, v5, :cond_0

    .line 41
    .line 42
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    .line 46
    .line 47
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_1
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    .line 59
    .line 60
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_3
    const-string v0, "ICY "

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    .line 77
    .line 78
    const/4 v4, 0x4

    .line 79
    goto :goto_0

    .line 80
    :cond_4
    const-string v0, "SOURCETABLE "

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_8

    .line 87
    .line 88
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 89
    .line 90
    const/16 v4, 0xc

    .line 91
    .line 92
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    add-int/lit8 v6, v4, 0x3

    .line 97
    .line 98
    if-lt v5, v6, :cond_7

    .line 99
    .line 100
    :try_start_0
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-le v7, v6, :cond_6

    .line 113
    .line 114
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-ne v6, v2, :cond_5

    .line 119
    .line 120
    add-int/2addr v4, v1

    .line 121
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    goto :goto_1

    .line 126
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    .line 127
    .line 128
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :cond_6
    const-string p0, ""

    .line 137
    .line 138
    :goto_1
    new-instance v1, Landroidx/room/s;

    .line 139
    .line 140
    invoke-direct {v1, v0, v5, p0}, Landroidx/room/s;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-object v1

    .line 144
    :catch_0
    new-instance v0, Ljava/net/ProtocolException;

    .line 145
    .line 146
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v0

    .line 154
    :cond_7
    new-instance v0, Ljava/net/ProtocolException;

    .line 155
    .line 156
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw v0

    .line 164
    :cond_8
    new-instance v0, Ljava/net/ProtocolException;

    .line 165
    .line 166
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v0
.end method


# virtual methods
.method public A(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/room/s;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    mul-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, [Ljava/lang/Object;

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    if-le v0, v2, :cond_0

    .line 13
    .line 14
    array-length v2, v1

    .line 15
    invoke-static {v2, v0}, Lu7/a0;->f(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 24
    .line 25
    :cond_0
    if-eqz p1, :cond_2

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, [Ljava/lang/Object;

    .line 32
    .line 33
    iget v1, p0, Landroidx/room/s;->b:I

    .line 34
    .line 35
    mul-int/lit8 v2, v1, 0x2

    .line 36
    .line 37
    aput-object p1, v0, v2

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    aput-object p2, v0, v2

    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    iput v1, p0, Landroidx/room/s;->b:I

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    new-instance p2, Ljava/lang/NullPointerException;

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v1, "null value in entry: "

    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, "=null"

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p2

    .line 73
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 74
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v1, "null key in entry: null="

    .line 78
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1
.end method

.method public B(Ljava/util/Set;)V
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/util/Collection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/room/s;->b:I

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    mul-int/lit8 v1, v1, 0x2

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, [Ljava/lang/Object;

    .line 17
    .line 18
    array-length v2, v0

    .line 19
    if-le v1, v2, :cond_0

    .line 20
    .line 21
    array-length v2, v0

    .line 22
    invoke-static {v2, v1}, Lu7/a0;->f(II)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 31
    .line 32
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/util/Map$Entry;

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0, v1, v0}, Landroidx/room/s;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method

.method public C(I)Lyb/a;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    move-object v3, v2

    .line 20
    check-cast v3, Lyb/a;

    .line 21
    .line 22
    iget v3, v3, Lyb/a;->a:I

    .line 23
    .line 24
    if-ne v3, p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v2, 0x0

    .line 28
    :goto_0
    check-cast v2, Lyb/a;

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_2
    return-object v2
.end method

.method public D()V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/room/s;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :sswitch_0
    iget-object v0, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/yunpan/appmanage/bean/PsBean;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/PsBean;->pid:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, ","

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    array-length v1, v0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_0

    .line 22
    .line 23
    aget-object v3, v0, v2

    .line 24
    .line 25
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 31
    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v6, "kill "

    .line 35
    .line 36
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-virtual {v4, v3, v5}, La2/w0;->g(Ljava/lang/String;Lfa/z;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityPs;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityPs;->D:Lx9/g4;

    .line 58
    .line 59
    iget v1, p0, Landroidx/room/s;->b:I

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lc6/g;->C(I)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :sswitch_1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->G:I

    .line 66
    .line 67
    iget-object v0, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityAccessibility;

    .line 70
    .line 71
    iget v1, p0, Landroidx/room/s;->b:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->x(I)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :sswitch_2
    iget-object v0, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Lx9/x0;

    .line 80
    .line 81
    iget-boolean v1, v0, Lx9/x0;->b:Z

    .line 82
    .line 83
    xor-int/lit8 v1, v1, 0x1

    .line 84
    .line 85
    iput-boolean v1, v0, Lx9/x0;->b:Z

    .line 86
    .line 87
    iget-object v1, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v1, Lx9/y0;

    .line 90
    .line 91
    iget v2, p0, Landroidx/room/s;->b:I

    .line 92
    .line 93
    invoke-virtual {v1, v2, v0}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0xd -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public E(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lt7/m;

    .line 7
    .line 8
    invoke-interface {v0, p0, p1}, Lt7/m;->k(Landroidx/room/s;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    :goto_0
    move-object v1, p1

    .line 18
    check-cast v1, Lt7/l;

    .line 19
    .line 20
    invoke-virtual {v1}, Lt7/l;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Lt7/l;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method public F([BII)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, p3

    .line 10
    const/16 v2, 0x1000

    .line 11
    .line 12
    if-le v1, v2, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v1}, Landroidx/room/s;->e(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 26
    .line 27
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    throw p2
.end method

.method public G(Ld4/b;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ld4/b;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'4135cdf74409428db4bd0ef6688b7463\')"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ld4/b;->d(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public a(II)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lmb/h;

    .line 4
    .line 5
    if-lez p2, :cond_0

    .line 6
    .line 7
    add-int/lit8 v1, p2, -0x1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lmb/h;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ljava/text/BreakIterator;

    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/text/BreakIterator;->isBoundary(I)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1, p2}, Ljava/text/BreakIterator;->preceding(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, -0x1

    .line 34
    if-eq v1, v2, :cond_0

    .line 35
    .line 36
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-le v1, p1, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v1, p2

    .line 48
    :goto_0
    if-ne v1, p2, :cond_5

    .line 49
    .line 50
    if-le p2, p1, :cond_5

    .line 51
    .line 52
    add-int/lit8 v2, p2, -0x1

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Lmb/h;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_1
    iget v1, p0, Landroidx/room/s;->b:I

    .line 66
    .line 67
    if-ne p2, v1, :cond_2

    .line 68
    .line 69
    return p2

    .line 70
    :cond_2
    :goto_1
    if-le v2, p1, :cond_4

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Lmb/h;->charAt(I)C

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const/16 v3, 0x2e

    .line 77
    .line 78
    if-ne v1, v3, :cond_3

    .line 79
    .line 80
    add-int/lit8 v1, v2, -0x1

    .line 81
    .line 82
    if-lt v1, p1, :cond_3

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lmb/h;->charAt(I)C

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_3

    .line 93
    .line 94
    add-int/lit8 v2, v2, 0x1

    .line 95
    .line 96
    return v2

    .line 97
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    return p2

    .line 101
    :cond_5
    :goto_2
    return v1
.end method

.method public b(Z)Lu7/d1;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lu7/h0;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Lu7/h0;->a()Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    throw v1

    .line 17
    :cond_1
    :goto_0
    iget v1, v0, Landroidx/room/s;->b:I

    .line 18
    .line 19
    iget-object v2, v0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, [Ljava/lang/Object;

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    sget-object v1, Lu7/d1;->g:Lu7/d1;

    .line 26
    .line 27
    goto/16 :goto_e

    .line 28
    .line 29
    :cond_2
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    if-ne v1, v3, :cond_3

    .line 33
    .line 34
    aget-object v1, v2, v5

    .line 35
    .line 36
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    aget-object v1, v2, v3

    .line 40
    .line 41
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    new-instance v1, Lu7/d1;

    .line 45
    .line 46
    invoke-direct {v1, v4, v2, v3}, Lu7/d1;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_e

    .line 50
    .line 51
    :cond_3
    array-length v6, v2

    .line 52
    shr-int/2addr v6, v3

    .line 53
    invoke-static {v1, v6}, La9/o;->p(II)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lu7/j0;->i(I)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-ne v1, v3, :cond_4

    .line 61
    .line 62
    aget-object v6, v2, v5

    .line 63
    .line 64
    invoke-static {v6}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    aget-object v6, v2, v3

    .line 68
    .line 69
    invoke-static {v6}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :goto_1
    const/4 v3, 0x2

    .line 73
    goto/16 :goto_d

    .line 74
    .line 75
    :cond_4
    add-int/lit8 v8, v6, -0x1

    .line 76
    .line 77
    const/16 v9, 0x80

    .line 78
    .line 79
    const/4 v10, 0x3

    .line 80
    const/4 v11, -0x1

    .line 81
    if-gt v6, v9, :cond_a

    .line 82
    .line 83
    new-array v6, v6, [B

    .line 84
    .line 85
    invoke-static {v6, v11}, Ljava/util/Arrays;->fill([BB)V

    .line 86
    .line 87
    .line 88
    const/4 v9, 0x0

    .line 89
    const/4 v11, 0x0

    .line 90
    :goto_2
    if-ge v9, v1, :cond_8

    .line 91
    .line 92
    mul-int/lit8 v12, v9, 0x2

    .line 93
    .line 94
    mul-int/lit8 v13, v11, 0x2

    .line 95
    .line 96
    aget-object v14, v2, v12

    .line 97
    .line 98
    invoke-static {v14}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    xor-int/2addr v12, v3

    .line 102
    aget-object v12, v2, v12

    .line 103
    .line 104
    invoke-static {v12}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result v15

    .line 111
    invoke-static {v15}, Lu7/q;->p(I)I

    .line 112
    .line 113
    .line 114
    move-result v15

    .line 115
    :goto_3
    and-int/2addr v15, v8

    .line 116
    aget-byte v7, v6, v15

    .line 117
    .line 118
    const/16 v3, 0xff

    .line 119
    .line 120
    and-int/2addr v7, v3

    .line 121
    if-ne v7, v3, :cond_6

    .line 122
    .line 123
    int-to-byte v3, v13

    .line 124
    aput-byte v3, v6, v15

    .line 125
    .line 126
    if-ge v11, v9, :cond_5

    .line 127
    .line 128
    aput-object v14, v2, v13

    .line 129
    .line 130
    xor-int/lit8 v3, v13, 0x1

    .line 131
    .line 132
    aput-object v12, v2, v3

    .line 133
    .line 134
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_6
    aget-object v3, v2, v7

    .line 138
    .line 139
    invoke-virtual {v14, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-eqz v3, :cond_7

    .line 144
    .line 145
    new-instance v3, Lu7/h0;

    .line 146
    .line 147
    xor-int/lit8 v4, v7, 0x1

    .line 148
    .line 149
    aget-object v7, v2, v4

    .line 150
    .line 151
    invoke-static {v7}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    invoke-direct {v3, v14, v12, v7}, Lu7/h0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    aput-object v12, v2, v4

    .line 158
    .line 159
    move-object v4, v3

    .line 160
    :goto_4
    add-int/lit8 v9, v9, 0x1

    .line 161
    .line 162
    const/4 v3, 0x1

    .line 163
    goto :goto_2

    .line 164
    :cond_7
    add-int/lit8 v15, v15, 0x1

    .line 165
    .line 166
    const/4 v3, 0x1

    .line 167
    goto :goto_3

    .line 168
    :cond_8
    if-ne v11, v1, :cond_9

    .line 169
    .line 170
    :goto_5
    move-object v4, v6

    .line 171
    goto :goto_1

    .line 172
    :cond_9
    new-array v3, v10, [Ljava/lang/Object;

    .line 173
    .line 174
    aput-object v6, v3, v5

    .line 175
    .line 176
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    const/4 v7, 0x1

    .line 181
    aput-object v6, v3, v7

    .line 182
    .line 183
    const/4 v6, 0x2

    .line 184
    aput-object v4, v3, v6

    .line 185
    .line 186
    goto/16 :goto_c

    .line 187
    .line 188
    :cond_a
    const v3, 0x8000

    .line 189
    .line 190
    .line 191
    if-gt v6, v3, :cond_10

    .line 192
    .line 193
    new-array v3, v6, [S

    .line 194
    .line 195
    invoke-static {v3, v11}, Ljava/util/Arrays;->fill([SS)V

    .line 196
    .line 197
    .line 198
    const/4 v6, 0x0

    .line 199
    const/4 v7, 0x0

    .line 200
    :goto_6
    if-ge v6, v1, :cond_e

    .line 201
    .line 202
    mul-int/lit8 v9, v6, 0x2

    .line 203
    .line 204
    mul-int/lit8 v11, v7, 0x2

    .line 205
    .line 206
    aget-object v12, v2, v9

    .line 207
    .line 208
    invoke-static {v12}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    const/4 v13, 0x1

    .line 212
    xor-int/2addr v9, v13

    .line 213
    aget-object v9, v2, v9

    .line 214
    .line 215
    invoke-static {v9}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    .line 219
    .line 220
    .line 221
    move-result v13

    .line 222
    invoke-static {v13}, Lu7/q;->p(I)I

    .line 223
    .line 224
    .line 225
    move-result v13

    .line 226
    :goto_7
    and-int/2addr v13, v8

    .line 227
    aget-short v14, v3, v13

    .line 228
    .line 229
    const v15, 0xffff

    .line 230
    .line 231
    .line 232
    and-int/2addr v14, v15

    .line 233
    if-ne v14, v15, :cond_c

    .line 234
    .line 235
    int-to-short v14, v11

    .line 236
    aput-short v14, v3, v13

    .line 237
    .line 238
    if-ge v7, v6, :cond_b

    .line 239
    .line 240
    aput-object v12, v2, v11

    .line 241
    .line 242
    xor-int/lit8 v11, v11, 0x1

    .line 243
    .line 244
    aput-object v9, v2, v11

    .line 245
    .line 246
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_c
    aget-object v15, v2, v14

    .line 250
    .line 251
    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v15

    .line 255
    if-eqz v15, :cond_d

    .line 256
    .line 257
    new-instance v4, Lu7/h0;

    .line 258
    .line 259
    xor-int/lit8 v11, v14, 0x1

    .line 260
    .line 261
    aget-object v13, v2, v11

    .line 262
    .line 263
    invoke-static {v13}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    invoke-direct {v4, v12, v9, v13}, Lu7/h0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    aput-object v9, v2, v11

    .line 270
    .line 271
    :goto_8
    add-int/lit8 v6, v6, 0x1

    .line 272
    .line 273
    goto :goto_6

    .line 274
    :cond_d
    add-int/lit8 v13, v13, 0x1

    .line 275
    .line 276
    goto :goto_7

    .line 277
    :cond_e
    if-ne v7, v1, :cond_f

    .line 278
    .line 279
    goto :goto_c

    .line 280
    :cond_f
    new-array v6, v10, [Ljava/lang/Object;

    .line 281
    .line 282
    aput-object v3, v6, v5

    .line 283
    .line 284
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    const/4 v7, 0x1

    .line 289
    aput-object v3, v6, v7

    .line 290
    .line 291
    const/4 v3, 0x2

    .line 292
    aput-object v4, v6, v3

    .line 293
    .line 294
    goto :goto_5

    .line 295
    :cond_10
    new-array v3, v6, [I

    .line 296
    .line 297
    invoke-static {v3, v11}, Ljava/util/Arrays;->fill([II)V

    .line 298
    .line 299
    .line 300
    const/4 v6, 0x0

    .line 301
    const/4 v7, 0x0

    .line 302
    :goto_9
    if-ge v6, v1, :cond_14

    .line 303
    .line 304
    mul-int/lit8 v9, v6, 0x2

    .line 305
    .line 306
    mul-int/lit8 v12, v7, 0x2

    .line 307
    .line 308
    aget-object v13, v2, v9

    .line 309
    .line 310
    invoke-static {v13}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    const/4 v14, 0x1

    .line 314
    xor-int/2addr v9, v14

    .line 315
    aget-object v9, v2, v9

    .line 316
    .line 317
    invoke-static {v9}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 321
    .line 322
    .line 323
    move-result v14

    .line 324
    invoke-static {v14}, Lu7/q;->p(I)I

    .line 325
    .line 326
    .line 327
    move-result v14

    .line 328
    :goto_a
    and-int/2addr v14, v8

    .line 329
    aget v15, v3, v14

    .line 330
    .line 331
    if-ne v15, v11, :cond_12

    .line 332
    .line 333
    aput v12, v3, v14

    .line 334
    .line 335
    if-ge v7, v6, :cond_11

    .line 336
    .line 337
    aput-object v13, v2, v12

    .line 338
    .line 339
    xor-int/lit8 v12, v12, 0x1

    .line 340
    .line 341
    aput-object v9, v2, v12

    .line 342
    .line 343
    :cond_11
    add-int/lit8 v7, v7, 0x1

    .line 344
    .line 345
    goto :goto_b

    .line 346
    :cond_12
    aget-object v11, v2, v15

    .line 347
    .line 348
    invoke-virtual {v13, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v11

    .line 352
    if-eqz v11, :cond_13

    .line 353
    .line 354
    new-instance v4, Lu7/h0;

    .line 355
    .line 356
    xor-int/lit8 v11, v15, 0x1

    .line 357
    .line 358
    aget-object v12, v2, v11

    .line 359
    .line 360
    invoke-static {v12}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    invoke-direct {v4, v13, v9, v12}, Lu7/h0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    aput-object v9, v2, v11

    .line 367
    .line 368
    :goto_b
    add-int/lit8 v6, v6, 0x1

    .line 369
    .line 370
    const/4 v11, -0x1

    .line 371
    goto :goto_9

    .line 372
    :cond_13
    add-int/lit8 v14, v14, 0x1

    .line 373
    .line 374
    const/4 v11, -0x1

    .line 375
    goto :goto_a

    .line 376
    :cond_14
    if-ne v7, v1, :cond_15

    .line 377
    .line 378
    :goto_c
    move-object v4, v3

    .line 379
    goto/16 :goto_1

    .line 380
    .line 381
    :cond_15
    new-array v6, v10, [Ljava/lang/Object;

    .line 382
    .line 383
    aput-object v3, v6, v5

    .line 384
    .line 385
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    const/4 v7, 0x1

    .line 390
    aput-object v3, v6, v7

    .line 391
    .line 392
    const/4 v3, 0x2

    .line 393
    aput-object v4, v6, v3

    .line 394
    .line 395
    move-object v4, v6

    .line 396
    :goto_d
    nop

    .line 397
    instance-of v6, v4, [Ljava/lang/Object;

    .line 398
    .line 399
    if-eqz v6, :cond_16

    .line 400
    .line 401
    check-cast v4, [Ljava/lang/Object;

    .line 402
    .line 403
    aget-object v1, v4, v3

    .line 404
    .line 405
    check-cast v1, Lu7/h0;

    .line 406
    .line 407
    iput-object v1, v0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 408
    .line 409
    aget-object v1, v4, v5

    .line 410
    .line 411
    const/4 v3, 0x1

    .line 412
    aget-object v3, v4, v3

    .line 413
    .line 414
    check-cast v3, Ljava/lang/Integer;

    .line 415
    .line 416
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 417
    .line 418
    .line 419
    move-result v3

    .line 420
    mul-int/lit8 v4, v3, 0x2

    .line 421
    .line 422
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    move-object v4, v1

    .line 427
    move v1, v3

    .line 428
    :cond_16
    new-instance v3, Lu7/d1;

    .line 429
    .line 430
    invoke-direct {v3, v4, v2, v1}, Lu7/d1;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 431
    .line 432
    .line 433
    move-object v1, v3

    .line 434
    :goto_e
    if-eqz p1, :cond_18

    .line 435
    .line 436
    iget-object v2, v0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 437
    .line 438
    check-cast v2, Lu7/h0;

    .line 439
    .line 440
    if-nez v2, :cond_17

    .line 441
    .line 442
    goto :goto_f

    .line 443
    :cond_17
    invoke-virtual {v2}, Lu7/h0;->a()Ljava/lang/IllegalArgumentException;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    throw v1

    .line 448
    :cond_18
    :goto_f
    return-object v1
.end method

.method public e(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    array-length v2, v1

    .line 10
    sub-int/2addr v2, p1

    .line 11
    const/4 p1, 0x0

    .line 12
    :goto_0
    if-ge p1, v2, :cond_1

    .line 13
    .line 14
    add-int/lit8 v3, p1, 0x10

    .line 15
    .line 16
    if-gt v3, v2, :cond_0

    .line 17
    .line 18
    const/16 v4, 0x10

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    sub-int v4, v2, p1

    .line 22
    .line 23
    :goto_1
    iget-object v5, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v5, Ljavax/crypto/Mac;

    .line 26
    .line 27
    invoke-virtual {v5, v1, p1, v4}, Ljavax/crypto/Mac;->update([BII)V

    .line 28
    .line 29
    .line 30
    move p1, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public f(Ll2/l;)J
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ll2/l;->d()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    iget-wide v4, v1, Ll2/l;->c:J

    .line 10
    .line 11
    const-wide/16 v6, 0x6

    .line 12
    .line 13
    sub-long v8, v4, v6

    .line 14
    .line 15
    iget-object v10, v0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v10, Ldd/c;

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    iget-object v12, v0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v12, Ll2/t;

    .line 23
    .line 24
    cmp-long v13, v2, v8

    .line 25
    .line 26
    if-gez v13, :cond_3

    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Ll2/l;->d()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    new-instance v8, Lu1/q;

    .line 33
    .line 34
    const/16 v9, 0x11

    .line 35
    .line 36
    invoke-direct {v8, v9}, Lu1/q;-><init>(I)V

    .line 37
    .line 38
    .line 39
    iget-object v9, v8, Lu1/q;->a:[B

    .line 40
    .line 41
    const/4 v13, 0x2

    .line 42
    invoke-virtual {v1, v9, v11, v13, v11}, Ll2/l;->c([BIIZ)Z

    .line 43
    .line 44
    .line 45
    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 46
    .line 47
    invoke-virtual {v8, v11, v9}, Lu1/q;->h(ILjava/nio/ByteOrder;)C

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    iget v14, v0, Landroidx/room/s;->b:I

    .line 52
    .line 53
    if-eq v9, v14, :cond_0

    .line 54
    .line 55
    iput v11, v1, Ll2/l;->f:I

    .line 56
    .line 57
    iget-wide v8, v1, Ll2/l;->d:J

    .line 58
    .line 59
    sub-long/2addr v2, v8

    .line 60
    long-to-int v3, v2

    .line 61
    invoke-virtual {v1, v3, v11}, Ll2/l;->k(IZ)Z

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    goto :goto_3

    .line 66
    :cond_0
    iget-object v9, v8, Lu1/q;->a:[B

    .line 67
    .line 68
    const/4 v15, 0x0

    .line 69
    :goto_1
    const/16 v6, 0xf

    .line 70
    .line 71
    if-ge v15, v6, :cond_2

    .line 72
    .line 73
    add-int v6, v13, v15

    .line 74
    .line 75
    rsub-int/lit8 v7, v15, 0xf

    .line 76
    .line 77
    invoke-virtual {v1, v6, v7, v9}, Ll2/l;->m(II[B)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    const/4 v7, -0x1

    .line 82
    if-ne v6, v7, :cond_1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_1
    add-int/2addr v15, v6

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    :goto_2
    add-int/lit8 v15, v15, 0x2

    .line 88
    .line 89
    invoke-virtual {v8, v15}, Lu1/q;->N(I)V

    .line 90
    .line 91
    .line 92
    iput v11, v1, Ll2/l;->f:I

    .line 93
    .line 94
    iget-wide v6, v1, Ll2/l;->d:J

    .line 95
    .line 96
    sub-long/2addr v2, v6

    .line 97
    long-to-int v3, v2

    .line 98
    invoke-virtual {v1, v3, v11}, Ll2/l;->k(IZ)Z

    .line 99
    .line 100
    .line 101
    invoke-static {v8, v12, v14, v10}, Ll2/b;->a(Lu1/q;Ll2/t;ILdd/c;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    :goto_3
    if-nez v2, :cond_3

    .line 106
    .line 107
    const/4 v2, 0x1

    .line 108
    invoke-virtual {v1, v2, v11}, Ll2/l;->k(IZ)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ll2/l;->d()J

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    const-wide/16 v6, 0x6

    .line 117
    .line 118
    sub-long v6, v4, v6

    .line 119
    .line 120
    cmp-long v8, v2, v6

    .line 121
    .line 122
    if-ltz v8, :cond_4

    .line 123
    .line 124
    invoke-virtual/range {p1 .. p1}, Ll2/l;->d()J

    .line 125
    .line 126
    .line 127
    move-result-wide v2

    .line 128
    sub-long/2addr v4, v2

    .line 129
    long-to-int v2, v4

    .line 130
    invoke-virtual {v1, v2, v11}, Ll2/l;->k(IZ)Z

    .line 131
    .line 132
    .line 133
    iget-wide v1, v12, Ll2/t;->j:J

    .line 134
    .line 135
    return-wide v1

    .line 136
    :cond_4
    iget-wide v1, v10, Ldd/c;->b:J

    .line 137
    .line 138
    return-wide v1
.end method

.method public g(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/room/s;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroidx/room/s;->b:I

    .line 8
    .line 9
    :cond_0
    :goto_0
    iget v0, p0, Landroidx/room/s;->b:I

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Landroid/util/SparseArray;

    .line 14
    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ge p1, v0, :cond_1

    .line 22
    .line 23
    iget v0, p0, Landroidx/room/s;->b:I

    .line 24
    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 26
    .line 27
    iput v0, p0, Landroidx/room/s;->b:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    :goto_1
    iget v0, p0, Landroidx/room/s;->b:I

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    add-int/lit8 v2, v2, -0x1

    .line 37
    .line 38
    if-ge v0, v2, :cond_2

    .line 39
    .line 40
    iget v0, p0, Landroidx/room/s;->b:I

    .line 41
    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-lt p1, v0, :cond_2

    .line 49
    .line 50
    iget v0, p0, Landroidx/room/s;->b:I

    .line 51
    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    iput v0, p0, Landroidx/room/s;->b:I

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iget p1, p0, Landroidx/room/s;->b:I

    .line 58
    .line 59
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1
.end method

.method public h(Ll2/l;J)Ll2/h;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Landroidx/room/s;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-wide v7, v1, Ll2/l;->d:J

    .line 11
    .line 12
    const v2, 0x1b8a0

    .line 13
    .line 14
    .line 15
    int-to-long v2, v2

    .line 16
    iget-wide v4, v1, Ll2/l;->c:J

    .line 17
    .line 18
    sub-long/2addr v4, v7

    .line 19
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    long-to-int v3, v2

    .line 24
    iget-object v2, v0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Lu1/q;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lu1/q;->L(I)V

    .line 29
    .line 30
    .line 31
    iget-object v4, v2, Lu1/q;->a:[B

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-virtual {v1, v4, v5, v3, v5}, Ll2/l;->c([BIIZ)Z

    .line 35
    .line 36
    .line 37
    iget v1, v2, Lu1/q;->c:I

    .line 38
    .line 39
    const-wide/16 v3, -0x1

    .line 40
    .line 41
    move-wide v9, v3

    .line 42
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {v2}, Lu1/q;->a()I

    .line 48
    .line 49
    .line 50
    move-result v11

    .line 51
    const/16 v12, 0xbc

    .line 52
    .line 53
    if-lt v11, v12, :cond_1

    .line 54
    .line 55
    iget-object v11, v2, Lu1/q;->a:[B

    .line 56
    .line 57
    iget v12, v2, Lu1/q;->b:I

    .line 58
    .line 59
    :goto_1
    if-ge v12, v1, :cond_0

    .line 60
    .line 61
    aget-byte v15, v11, v12

    .line 62
    .line 63
    const/16 v5, 0x47

    .line 64
    .line 65
    if-eq v15, v5, :cond_0

    .line 66
    .line 67
    add-int/lit8 v12, v12, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_0
    add-int/lit16 v5, v12, 0xbc

    .line 71
    .line 72
    if-le v5, v1, :cond_2

    .line 73
    .line 74
    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    iget v3, v0, Landroidx/room/s;->b:I

    .line 81
    .line 82
    invoke-static {v2, v12, v3}, Lcom/bumptech/glide/d;->Y(Lu1/q;II)J

    .line 83
    .line 84
    .line 85
    move-result-wide v3

    .line 86
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    cmp-long v6, v3, v15

    .line 92
    .line 93
    if-eqz v6, :cond_6

    .line 94
    .line 95
    iget-object v6, v0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v6, Lu1/d0;

    .line 98
    .line 99
    invoke-virtual {v6, v3, v4}, Lu1/d0;->b(J)J

    .line 100
    .line 101
    .line 102
    move-result-wide v18

    .line 103
    cmp-long v3, v18, p2

    .line 104
    .line 105
    if-lez v3, :cond_4

    .line 106
    .line 107
    cmp-long v1, v13, v15

    .line 108
    .line 109
    if-nez v1, :cond_3

    .line 110
    .line 111
    new-instance v1, Ll2/h;

    .line 112
    .line 113
    const/4 v4, -0x1

    .line 114
    move-object v3, v1

    .line 115
    move-wide/from16 v5, v18

    .line 116
    .line 117
    invoke-direct/range {v3 .. v8}, Ll2/h;-><init>(IJJ)V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_3
    add-long v13, v7, v9

    .line 122
    .line 123
    new-instance v1, Ll2/h;

    .line 124
    .line 125
    const/4 v10, 0x0

    .line 126
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    move-object v9, v1

    .line 132
    invoke-direct/range {v9 .. v14}, Ll2/h;-><init>(IJJ)V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_4
    const-wide/32 v3, 0x186a0

    .line 137
    .line 138
    .line 139
    add-long v3, v18, v3

    .line 140
    .line 141
    cmp-long v6, v3, p2

    .line 142
    .line 143
    if-lez v6, :cond_5

    .line 144
    .line 145
    int-to-long v1, v12

    .line 146
    add-long v13, v7, v1

    .line 147
    .line 148
    new-instance v1, Ll2/h;

    .line 149
    .line 150
    const/4 v10, 0x0

    .line 151
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    move-object v9, v1

    .line 157
    invoke-direct/range {v9 .. v14}, Ll2/h;-><init>(IJJ)V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_5
    int-to-long v3, v12

    .line 162
    move-wide v9, v3

    .line 163
    move-wide/from16 v13, v18

    .line 164
    .line 165
    :cond_6
    invoke-virtual {v2, v5}, Lu1/q;->O(I)V

    .line 166
    .line 167
    .line 168
    int-to-long v3, v5

    .line 169
    goto :goto_0

    .line 170
    :goto_2
    cmp-long v5, v13, v1

    .line 171
    .line 172
    if-eqz v5, :cond_7

    .line 173
    .line 174
    add-long v15, v7, v3

    .line 175
    .line 176
    new-instance v1, Ll2/h;

    .line 177
    .line 178
    const/4 v12, -0x2

    .line 179
    move-object v11, v1

    .line 180
    invoke-direct/range {v11 .. v16}, Ll2/h;-><init>(IJJ)V

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_7
    sget-object v1, Ll2/h;->d:Ll2/h;

    .line 185
    .line 186
    :goto_3
    return-object v1

    .line 187
    :pswitch_0
    iget-wide v6, v1, Ll2/l;->d:J

    .line 188
    .line 189
    invoke-virtual/range {p0 .. p1}, Landroidx/room/s;->f(Ll2/l;)J

    .line 190
    .line 191
    .line 192
    move-result-wide v4

    .line 193
    invoke-virtual/range {p1 .. p1}, Ll2/l;->d()J

    .line 194
    .line 195
    .line 196
    move-result-wide v12

    .line 197
    iget-object v2, v0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v2, Ll2/t;

    .line 200
    .line 201
    iget v2, v2, Ll2/t;->c:I

    .line 202
    .line 203
    const/4 v3, 0x6

    .line 204
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    const/4 v3, 0x0

    .line 209
    invoke-virtual {v1, v2, v3}, Ll2/l;->k(IZ)Z

    .line 210
    .line 211
    .line 212
    invoke-virtual/range {p0 .. p1}, Landroidx/room/s;->f(Ll2/l;)J

    .line 213
    .line 214
    .line 215
    move-result-wide v16

    .line 216
    invoke-virtual/range {p1 .. p1}, Ll2/l;->d()J

    .line 217
    .line 218
    .line 219
    move-result-wide v18

    .line 220
    cmp-long v1, v4, p2

    .line 221
    .line 222
    if-gtz v1, :cond_8

    .line 223
    .line 224
    cmp-long v1, v16, p2

    .line 225
    .line 226
    if-lez v1, :cond_8

    .line 227
    .line 228
    new-instance v1, Ll2/h;

    .line 229
    .line 230
    const/4 v9, 0x0

    .line 231
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    move-object v8, v1

    .line 237
    invoke-direct/range {v8 .. v13}, Ll2/h;-><init>(IJJ)V

    .line 238
    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_8
    cmp-long v1, v16, p2

    .line 242
    .line 243
    if-gtz v1, :cond_9

    .line 244
    .line 245
    new-instance v1, Ll2/h;

    .line 246
    .line 247
    const/4 v15, -0x2

    .line 248
    move-object v14, v1

    .line 249
    invoke-direct/range {v14 .. v19}, Ll2/h;-><init>(IJJ)V

    .line 250
    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_9
    new-instance v1, Ll2/h;

    .line 254
    .line 255
    const/4 v3, -0x1

    .line 256
    move-object v2, v1

    .line 257
    invoke-direct/range {v2 .. v7}, Ll2/h;-><init>(IJJ)V

    .line 258
    .line 259
    .line 260
    :goto_4
    return-object v1

    .line 261
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public i()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/room/s;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lu1/f0;->b:[B

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lu1/q;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    array-length v2, v0

    .line 16
    invoke-virtual {v1, v2, v0}, Lu1/q;->M(I[B)V

    .line 17
    .line 18
    .line 19
    :pswitch_0
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public j()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method

.method public l()I
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iget v1, p0, Landroidx/room/s;->b:I

    .line 3
    .line 4
    if-eq v1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-eq v1, v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    const/16 v0, 0x200

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    const/16 v0, 0x800

    .line 15
    .line 16
    return v0
.end method

.method public m(Lwh/m;)Ljava/lang/Long;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lwh/k;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lwh/k;->b(Lwh/m;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Lsh/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    iget v0, p0, Landroidx/room/s;->b:I

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :cond_0
    throw p1
.end method

.method public n(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/room/s;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p2, Lc6/g;

    .line 11
    .line 12
    iget v0, p0, Landroidx/room/s;->b:I

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 19
    .line 20
    iput-object p1, v1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p2, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;

    .line 28
    .line 29
    iget-object p2, p2, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->I:Lz7/o;

    .line 30
    .line 31
    invoke-virtual {p2, v0}, Lz7/o;->l(I)Lz7/p;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2}, Lz7/p;->g()Lz7/s;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const-string v0, "name"

    .line 40
    .line 41
    invoke-virtual {p2, v0, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void

    .line 45
    :pswitch_0
    if-eqz p2, :cond_1

    .line 46
    .line 47
    iget-object p2, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p2, Lc6/g;

    .line 50
    .line 51
    iget v0, p0, Landroidx/room/s;->b:I

    .line 52
    .line 53
    invoke-virtual {p2, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 58
    .line 59
    iput-object p1, v1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p2, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;

    .line 67
    .line 68
    iget-object p2, p2, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->M:Lz7/o;

    .line 69
    .line 70
    invoke-virtual {p2, v0}, Lz7/o;->l(I)Lz7/p;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p2}, Lz7/p;->g()Lz7/s;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    const-string v0, "appName"

    .line 79
    .line 80
    invoke-virtual {p2, v0, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void

    .line 84
    :pswitch_1
    if-eqz p2, :cond_2

    .line 85
    .line 86
    iget-object p2, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p2, Lc6/g;

    .line 89
    .line 90
    iget v0, p0, Landroidx/room/s;->b:I

    .line 91
    .line 92
    invoke-virtual {p2, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 97
    .line 98
    iput-object p1, v1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 101
    .line 102
    .line 103
    iget-object p2, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p2, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;

    .line 106
    .line 107
    iget-object p2, p2, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->M:Lz7/o;

    .line 108
    .line 109
    invoke-virtual {p2, v0}, Lz7/o;->l(I)Lz7/p;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p2}, Lz7/p;->g()Lz7/s;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    const-string v0, "appName"

    .line 118
    .line 119
    invoke-virtual {p2, v0, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_2
    return-void

    .line 123
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public o([B)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljavax/crypto/Mac;

    .line 4
    .line 5
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 6
    .line 7
    const-string v2, "HmacSHA1"

    .line 8
    .line 9
    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception p1

    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method public onPermissionResult(Ljava/util/List;Ljava/util/List;)V
    .locals 4

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string p1, "\u9700\u6388\u4e88\u67e5\u770b\u5e94\u7528\u4f7f\u7528\u60c5\u51b5\u6743\u9650\uff0c\u7b80\u79f0\u4f7f\u7528\u7edf\u8ba1\u6743\u9650"

    .line 9
    .line 10
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    iget v0, p0, Landroidx/room/s;->b:I

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/String;

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget v1, Lcom/yunpan/appmanage/ui/ActivityStudy;->I:I

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    new-instance v2, Lha/v1;

    .line 41
    .line 42
    const/16 v3, 0xd

    .line 43
    .line 44
    invoke-direct {v2, v1, p1, v0, v3}, Lha/v1;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Lmc/c;

    .line 48
    .line 49
    invoke-direct {p1, p2, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance v0, Lua/y6;

    .line 67
    .line 68
    invoke-direct {v0, v1, p2}, Lua/y6;-><init>(Lcom/yunpan/appmanage/ui/ActivityStudy;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/Shader;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/room/s;->b:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public s(Lc4/a;)V
    .locals 4

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ld4/b;

    .line 3
    .line 4
    const-string v1, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ld4/b;->s(Ljava/lang/String;)Landroid/database/Cursor;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 18
    .line 19
    .line 20
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 28
    invoke-static {v1, v2}, Lqf/c;->g(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Landroidx/room/q;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Landroidx/room/q;->createAllTables(Lc4/a;)V

    .line 36
    .line 37
    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Landroidx/room/q;->onValidateSchema(Lc4/a;)Landroidx/room/r;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-boolean v3, v2, Landroidx/room/r;->a:Z

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v1, "Pre-packaged database has an invalid schema: "

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v2, Landroidx/room/r;->b:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/room/s;->G(Ld4/b;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p1}, Landroidx/room/q;->onCreate(Lc4/a;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :goto_2
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    :catchall_1
    move-exception v0

    .line 80
    invoke-static {v1, p1}, Lqf/c;->g(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    throw v0
.end method

.method public t()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Landroidx/room/s;->a:I

    .line 3
    .line 4
    sparse-switch v1, :sswitch_data_0

    .line 5
    .line 6
    .line 7
    new-instance v1, Lha/v1;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lc6/g;

    .line 12
    .line 13
    iget v3, p0, Landroidx/room/s;->b:I

    .line 14
    .line 15
    const/16 v4, 0xf

    .line 16
    .line 17
    invoke-direct {v1, p0, v2, v3, v4}, Lha/v1;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lmc/c;

    .line 21
    .line 22
    invoke-direct {v2, v0, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Lua/s7;

    .line 40
    .line 41
    invoke-direct {v2, v0, p0}, Lua/s7;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :sswitch_0
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "am force-stop \'"

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Lcom/yunpan/appmanage/bean/PsBean;

    .line 60
    .line 61
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    .line 62
    .line 63
    const-string v3, "\'"

    .line 64
    .line 65
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    new-instance v2, Lha/o;

    .line 70
    .line 71
    iget v3, p0, Landroidx/room/s;->b:I

    .line 72
    .line 73
    const/16 v4, 0x10

    .line 74
    .line 75
    invoke-direct {v2, v3, v4, p0}, Lha/o;-><init>(IILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, La2/w0;->g(Ljava/lang/String;Lfa/z;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :sswitch_1
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {}, La2/w0;->O()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_0

    .line 92
    .line 93
    const-string v0, "\u9700\u8981\u8fdeadb\u65b9\u53ef\u5f3a\u5236\u505c\u6b62\u7b2c\u4e09\u65b9\u5e94\u7528"

    .line 94
    .line 95
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 100
    .line 101
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 102
    .line 103
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 104
    .line 105
    new-instance v2, Lha/db;

    .line 106
    .line 107
    iget-object v3, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v3, Lx9/b;

    .line 110
    .line 111
    const/16 v4, 0x18

    .line 112
    .line 113
    invoke-direct {v2, v4, v3}, Lha/db;-><init>(ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 117
    .line 118
    .line 119
    iput-boolean v0, v3, Lx9/b;->g:Z

    .line 120
    .line 121
    iget-object v0, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityAccessibility;

    .line 124
    .line 125
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->D:Lx9/a;

    .line 126
    .line 127
    iget v1, p0, Landroidx/room/s;->b:I

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 130
    .line 131
    .line 132
    :goto_0
    :sswitch_2
    return-void

    .line 133
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0xd -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/room/s;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :sswitch_0
    iget-object v0, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lwh/k;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Lokhttp3/Protocol;

    .line 28
    .line 29
    sget-object v2, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    .line 30
    .line 31
    if-ne v1, v2, :cond_0

    .line 32
    .line 33
    const-string v1, "HTTP/1.0"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string v1, "HTTP/1.1"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    :goto_0
    const/16 v1, 0x20

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v2, p0, Landroidx/room/s;->b:I

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0

    .line 69
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method public v(Lc4/a;)V
    .locals 6

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ld4/b;

    .line 3
    .line 4
    const-string v1, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ld4/b;->s(Ljava/lang/String;)Landroid/database/Cursor;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 18
    .line 19
    .line 20
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 29
    :goto_0
    const/4 v4, 0x0

    .line 30
    invoke-static {v1, v4}, Lqf/c;->g(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Landroidx/room/q;

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    new-instance v2, La2/g1;

    .line 40
    .line 41
    const-string v5, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    .line 42
    .line 43
    invoke-direct {v2, v5}, La2/g1;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ld4/b;->x(Lc4/d;)Landroid/database/Cursor;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    goto :goto_1

    .line 61
    :catchall_1
    move-exception p1

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    move-object v2, v4

    .line 64
    :goto_1
    invoke-static {v0, v4}, Lqf/c;->g(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "4135cdf74409428db4bd0ef6688b7463"

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_4

    .line 74
    .line 75
    const-string v0, "5dfd75703dd2d63fe7c0fd9a51609713"

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    const-string v0, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: 4135cdf74409428db4bd0ef6688b7463, found: "

    .line 87
    .line 88
    invoke-static {v0, v2}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :goto_2
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 97
    :catchall_2
    move-exception v1

    .line 98
    invoke-static {v0, p1}, Lqf/c;->g(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw v1

    .line 102
    :cond_3
    invoke-virtual {v1, p1}, Landroidx/room/q;->onValidateSchema(Lc4/a;)Landroidx/room/r;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iget-boolean v3, v2, Landroidx/room/r;->a:Z

    .line 107
    .line 108
    if-eqz v3, :cond_5

    .line 109
    .line 110
    invoke-virtual {v1, p1}, Landroidx/room/q;->onPostMigrate(Lc4/a;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v0}, Landroidx/room/s;->G(Ld4/b;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    :goto_3
    invoke-virtual {v1, p1}, Landroidx/room/q;->onOpen(Lc4/a;)V

    .line 117
    .line 118
    .line 119
    iput-object v4, p0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 120
    .line 121
    return-void

    .line 122
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 123
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v1, "Pre-packaged database has an invalid schema: "

    .line 127
    .line 128
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v1, v2, Landroidx/room/r;->b:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p1

    .line 144
    :goto_4
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 145
    :catchall_3
    move-exception v0

    .line 146
    invoke-static {v1, p1}, Lqf/c;->g(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    throw v0
.end method

.method public x(Ld4/b;II)V
    .locals 16

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
    move/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v4, Landroidx/room/c;

    .line 12
    .line 13
    iget-object v5, v0, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v5, Landroidx/room/q;

    .line 16
    .line 17
    if-eqz v4, :cond_c

    .line 18
    .line 19
    iget-object v4, v4, Landroidx/room/c;->b:Landroidx/room/o;

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    if-ne v2, v3, :cond_0

    .line 25
    .line 26
    sget-object v4, Lje/r;->a:Lje/r;

    .line 27
    .line 28
    goto/16 :goto_6

    .line 29
    .line 30
    :cond_0
    const/4 v7, 0x0

    .line 31
    if-le v3, v2, :cond_1

    .line 32
    .line 33
    const/4 v8, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v8, 0x0

    .line 36
    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    move v10, v2

    .line 42
    :cond_2
    if-eqz v8, :cond_3

    .line 43
    .line 44
    if-ge v10, v3, :cond_9

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    if-le v10, v3, :cond_9

    .line 48
    .line 49
    :goto_1
    iget-object v11, v4, Landroidx/room/o;->a:Ljava/util/LinkedHashMap;

    .line 50
    .line 51
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v12

    .line 55
    invoke-virtual {v11, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    check-cast v11, Ljava/util/TreeMap;

    .line 60
    .line 61
    const/4 v12, 0x0

    .line 62
    if-nez v11, :cond_4

    .line 63
    .line 64
    :goto_2
    move-object v4, v12

    .line 65
    goto :goto_6

    .line 66
    :cond_4
    if-eqz v8, :cond_5

    .line 67
    .line 68
    invoke-virtual {v11}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    .line 69
    .line 70
    .line 71
    move-result-object v13

    .line 72
    goto :goto_3

    .line 73
    :cond_5
    invoke-virtual {v11}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object v13

    .line 77
    :goto_3
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    :cond_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v14

    .line 85
    if-eqz v14, :cond_8

    .line 86
    .line 87
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v14

    .line 91
    check-cast v14, Ljava/lang/Integer;

    .line 92
    .line 93
    const-string v15, "targetVersion"

    .line 94
    .line 95
    if-eqz v8, :cond_7

    .line 96
    .line 97
    add-int/lit8 v6, v10, 0x1

    .line 98
    .line 99
    invoke-static {v14, v15}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v15

    .line 106
    if-gt v6, v15, :cond_6

    .line 107
    .line 108
    if-gt v15, v3, :cond_6

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_7
    invoke-static {v14, v15}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-gt v3, v6, :cond_6

    .line 119
    .line 120
    if-ge v6, v10, :cond_6

    .line 121
    .line 122
    :goto_4
    invoke-virtual {v11, v14}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-static {v6}, Lue/d;->b(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    const/4 v6, 0x1

    .line 137
    goto :goto_5

    .line 138
    :cond_8
    const/4 v6, 0x0

    .line 139
    :goto_5
    if-nez v6, :cond_2

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_9
    move-object v4, v9

    .line 143
    :goto_6
    if-eqz v4, :cond_c

    .line 144
    .line 145
    invoke-virtual {v5, v1}, Landroidx/room/q;->onPreMigrate(Lc4/a;)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-nez v3, :cond_b

    .line 157
    .line 158
    invoke-virtual {v5, v1}, Landroidx/room/q;->onValidateSchema(Lc4/a;)Landroidx/room/r;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    iget-boolean v3, v2, Landroidx/room/r;->a:Z

    .line 163
    .line 164
    if-eqz v3, :cond_a

    .line 165
    .line 166
    invoke-virtual {v5, v1}, Landroidx/room/q;->onPostMigrate(Lc4/a;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual/range {p0 .. p1}, Landroidx/room/s;->G(Ld4/b;)V

    .line 170
    .line 171
    .line 172
    goto :goto_7

    .line 173
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 174
    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v4, "Migration didn\'t properly handle: "

    .line 178
    .line 179
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object v2, v2, Landroidx/room/r;->b:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw v1

    .line 195
    :cond_b
    invoke-static {v2}, Ll2/z;->d(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    throw v1

    .line 200
    :cond_c
    iget-object v4, v0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v4, Landroidx/room/c;

    .line 203
    .line 204
    if-eqz v4, :cond_d

    .line 205
    .line 206
    iget-object v4, v4, Landroidx/room/c;->e:Ljava/util/LinkedHashSet;

    .line 207
    .line 208
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    if-eqz v4, :cond_d

    .line 217
    .line 218
    invoke-virtual {v5, v1}, Landroidx/room/q;->dropAllTables(Lc4/a;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5, v1}, Landroidx/room/q;->createAllTables(Lc4/a;)V

    .line 222
    .line 223
    .line 224
    :goto_7
    return-void

    .line 225
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 226
    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    const-string v5, "A migration from "

    .line 230
    .line 231
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v2, " to "

    .line 238
    .line 239
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    .line 246
    .line 247
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    goto :goto_9

    .line 258
    :goto_8
    throw v1

    .line 259
    :goto_9
    goto :goto_8
.end method

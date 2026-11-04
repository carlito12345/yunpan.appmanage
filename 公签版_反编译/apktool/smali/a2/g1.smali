.class public final La2/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
.implements Lc4/d;
.implements Lcom/yunpan/appmanage/carsdk/v;
.implements Ld2/m;
.implements Ld2/n;
.implements Lx0/x;
.implements Lcom/bumptech/glide/load/data/d;
.implements Lc6/e;
.implements Lha/ea;
.implements Lha/wd;
.implements Li5/h;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, La2/g1;->a:I

    packed-switch p1, :pswitch_data_0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x1f4

    .line 38
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, La2/g1;->b:Ljava/lang/Object;

    return-void

    .line 39
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance p1, La6/m;

    const-wide/16 v0, 0x3e8

    invoke-direct {p1, v0, v1}, La6/m;-><init>(J)V

    iput-object p1, p0, La2/g1;->b:Ljava/lang/Object;

    .line 41
    new-instance p1, Lha/j2;

    const/16 v0, 0xd

    invoke-direct {p1, v0}, Lha/j2;-><init>(I)V

    const/16 v0, 0xa

    .line 42
    invoke-static {v0, p1}, Lb6/c;->a(ILb6/a;)Lv3/f;

    move-result-object p1

    iput-object p1, p0, La2/g1;->c:Ljava/lang/Object;

    return-void

    .line 43
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, La2/g1;->b:Ljava/lang/Object;

    .line 45
    new-instance p1, Lj5/c;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lj5/c;-><init>(I)V

    iput-object p1, p0, La2/g1;->c:Ljava/lang/Object;

    return-void

    .line 46
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance p1, Li5/e;

    const/4 v0, 0x0

    .line 48
    invoke-direct {p1, v0}, Li5/e;-><init>(Li5/i;)V

    .line 49
    iput-object p1, p0, La2/g1;->b:Ljava/lang/Object;

    .line 50
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, La2/g1;->c:Ljava/lang/Object;

    return-void

    .line 51
    :pswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance p1, Li5/b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Li5/b;-><init>(I)V

    iput-object p1, p0, La2/g1;->b:Ljava/lang/Object;

    .line 53
    new-instance p1, La2/g1;

    const/16 v0, 0x19

    invoke-direct {p1, v0}, La2/g1;-><init>(I)V

    iput-object p1, p0, La2/g1;->c:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, La2/g1;->a:I

    iput-object p2, p0, La2/g1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 2
    iput p1, p0, La2/g1;->a:I

    iput-object p2, p0, La2/g1;->c:Ljava/lang/Object;

    iput-object p3, p0, La2/g1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 3
    iput p1, p0, La2/g1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(La2/w0;Lm7/e;Landroidx/emoji2/text/f;)V
    .locals 0

    const/4 p2, 0x3

    iput p2, p0, La2/g1;->a:I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, La2/g1;->b:Ljava/lang/Object;

    .line 62
    iput-object p3, p0, La2/g1;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(La9/a;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, La2/g1;->a:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 16
    new-array v0, v0, [B

    iput-object v0, p0, La2/g1;->c:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, La2/g1;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, La2/g1;->a:I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, La2/g1;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    const/16 v0, 0x17

    iput v0, p0, La2/g1;->a:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, La2/g1;->c:Ljava/lang/Object;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    .line 23
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    if-eqz v0, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto/16 :goto_3

    .line 24
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "Variant"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_5

    :sswitch_1
    const-string v2, "layoutDescription"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :sswitch_2
    const-string v4, "StateSet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :sswitch_3
    const-string v2, "State"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_4
    const-string v2, "ConstraintSet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, -0x1

    :goto_2
    if-eq v2, v3, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    goto :goto_3

    .line 26
    :cond_2
    invoke-virtual {p0, p1, p2}, La2/g1;->V(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    goto :goto_3

    .line 27
    :cond_3
    new-instance v0, Li0/g;

    invoke-direct {v0, p1, p2}, Li0/g;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    if-eqz v1, :cond_6

    .line 28
    iget-object v2, v1, La0/h;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 29
    :cond_4
    new-instance v1, La0/h;

    invoke-direct {v1, p1, p2}, La0/h;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 30
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    iget v2, v1, La0/h;->b:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 31
    :cond_5
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 32
    :cond_6
    :goto_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 34
    :goto_5
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_7
    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_4
        0x4c7d471 -> :sswitch_3
        0x526c4e31 -> :sswitch_2
        0x62ce7272 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Lv3/f;)V
    .locals 2

    const/16 v0, 0xd

    iput v0, p0, La2/g1;->a:I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, La2/g1;->b:Ljava/lang/Object;

    .line 56
    iput-object p2, p0, La2/g1;->c:Ljava/lang/Object;

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_1

    .line 58
    iget-object v0, p2, Lv3/f;->d:Ljava/lang/Object;

    check-cast v0, Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Ld2/b;->e(Landroid/media/LoudnessCodecController;Landroid/media/MediaCodec;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget-object p2, p2, Lv3/f;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, La9/o;->t(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lha/jd;)V
    .locals 1

    const/16 v0, 0x1c

    iput v0, p0, La2/g1;->a:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, La2/g1;->b:Ljava/lang/Object;

    .line 14
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x4000

    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, La2/g1;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 4
    iput p2, p0, La2/g1;->a:I

    iput-object p1, p0, La2/g1;->b:Ljava/lang/Object;

    iput-object p3, p0, La2/g1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, La2/g1;->a:I

    const-string v0, "query"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0}, La2/g1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, La2/g1;->a:I

    const-string v0, "query"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, La2/g1;->b:Ljava/lang/Object;

    .line 10
    iput-object p2, p0, La2/g1;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lk4/g;)V
    .locals 1

    const/16 v0, 0x1d

    iput v0, p0, La2/g1;->a:I

    .line 63
    iput-object p1, p0, La2/g1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, La2/g1;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lm7/e;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, La2/g1;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, La2/g1;->c:Ljava/lang/Object;

    return-void
.end method

.method public static O(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, -0x1

    .line 22
    if-eq p1, v2, :cond_6

    .line 23
    .line 24
    if-eq v1, v2, :cond_6

    .line 25
    .line 26
    if-eq p1, v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const-class v2, Landroidx/emoji2/text/w;

    .line 30
    .line 31
    invoke-interface {p0, p1, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, [Landroidx/emoji2/text/w;

    .line 36
    .line 37
    if-eqz v1, :cond_6

    .line 38
    .line 39
    array-length v2, v1

    .line 40
    if-lez v2, :cond_6

    .line 41
    .line 42
    array-length v2, v1

    .line 43
    const/4 v3, 0x0

    .line 44
    :goto_0
    if-ge v3, v2, :cond_6

    .line 45
    .line 46
    aget-object v4, v1, v3

    .line 47
    .line 48
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    if-eq v5, p1, :cond_4

    .line 59
    .line 60
    :cond_2
    if-nez p2, :cond_3

    .line 61
    .line 62
    if-eq v4, p1, :cond_4

    .line 63
    .line 64
    :cond_3
    if-le p1, v5, :cond_5

    .line 65
    .line 66
    if-ge p1, v4, :cond_5

    .line 67
    .line 68
    :cond_4
    invoke-interface {p0, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x1

    .line 72
    return p0

    .line 73
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_6
    :goto_1
    return v0
.end method

.method public static R(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "["

    .line 2
    .line 3
    const-string v1, "x"

    .line 4
    .line 5
    const-string v2, "], "

    .line 6
    .line 7
    invoke-static {p0, p1, v0, v1, v2}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public B(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, La2/g1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lh5/e0;

    .line 4
    .line 5
    iget-object v1, p0, La2/g1;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ll5/p;

    .line 8
    .line 9
    iget-object v0, v0, Lh5/e0;->f:Ll5/p;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, La2/g1;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lh5/e0;

    .line 18
    .line 19
    iget-object v1, p0, La2/g1;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ll5/p;

    .line 22
    .line 23
    iget-object v2, v0, Lh5/e0;->a:Lh5/h;

    .line 24
    .line 25
    iget-object v2, v2, Lh5/h;->p:Lh5/l;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object v3, v1, Ll5/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 30
    .line 31
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->c()Lf5/a;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Lh5/l;->a(Lf5/a;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    iput-object p1, v0, Lh5/e0;->e:Ljava/lang/Object;

    .line 42
    .line 43
    iget-object p1, v0, Lh5/e0;->b:Lh5/j;

    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    invoke-virtual {p1, v0}, Lh5/j;->n(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v2, v0, Lh5/e0;->b:Lh5/j;

    .line 51
    .line 52
    iget-object v3, v1, Ll5/p;->a:Lf5/f;

    .line 53
    .line 54
    iget-object v4, v1, Ll5/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 55
    .line 56
    invoke-interface {v4}, Lcom/bumptech/glide/load/data/e;->c()Lf5/a;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    iget-object v6, v0, Lh5/e0;->g:Lh5/e;

    .line 61
    .line 62
    move-object v1, v2

    .line 63
    move-object v2, v3

    .line 64
    move-object v3, p1

    .line 65
    invoke-virtual/range {v1 .. v6}, Lh5/j;->a(Lf5/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;Lf5/a;Lf5/f;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    return-void
.end method

.method public C(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-static {v0, p1}, Ld2/a;->n(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public D()V
    .locals 6

    .line 1
    new-instance v0, Lz7/s;

    .line 2
    .line 3
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, La2/g1;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 9
    .line 10
    iget v2, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 11
    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "type"

    .line 17
    .line 18
    invoke-virtual {v0, v3, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, La2/g1;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lha/a9;

    .line 24
    .line 25
    iget-object v3, v2, Lha/a9;->s:Lz7/s;

    .line 26
    .line 27
    const-string v4, "name"

    .line 28
    .line 29
    iget-object v5, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v3, v4, v5}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v3, v2, Lha/a9;->s:Lz7/s;

    .line 35
    .line 36
    const-string v4, "event"

    .line 37
    .line 38
    invoke-virtual {v3, v4, v0}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Lha/a9;->b(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public E(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-static {v0, p1}, Ld2/c;->r(Landroid/media/MediaCodec;Landroid/view/Surface;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public F(Ljava/lang/Object;III)V
    .locals 1

    .line 1
    const p3, 0x11400401

    .line 2
    .line 3
    .line 4
    if-ne p2, p3, :cond_6

    .line 5
    .line 6
    instance-of p2, p1, Ljava/lang/Integer;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    check-cast p1, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    instance-of p2, p1, Ljava/lang/Short;

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    check-cast p1, Ljava/lang/Short;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    instance-of p2, p1, Ljava/lang/Byte;

    .line 29
    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    check-cast p1, Ljava/lang/Byte;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 p1, -0x1

    .line 40
    :goto_0
    const/4 p2, 0x2

    .line 41
    iget-object p3, p0, La2/g1;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p3, Lcom/yunpan/appmanage/carsdk/x;

    .line 44
    .line 45
    iget-object p4, p0, La2/g1;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p4, Lcom/yunpan/appmanage/service/AccService;

    .line 48
    .line 49
    if-ne p1, p2, :cond_3

    .line 50
    .line 51
    iget-object p1, p3, Lcom/yunpan/appmanage/carsdk/x;->l:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lz7/o;

    .line 62
    .line 63
    invoke-virtual {p4, p1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    const/4 p2, 0x1

    .line 68
    const/4 v0, 0x4

    .line 69
    if-ne p1, v0, :cond_4

    .line 70
    .line 71
    iget-object p1, p3, Lcom/yunpan/appmanage/carsdk/x;->l:Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lz7/o;

    .line 82
    .line 83
    invoke-virtual {p4, p1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    if-ne p1, p2, :cond_5

    .line 88
    .line 89
    iget-object p1, p3, Lcom/yunpan/appmanage/carsdk/x;->l:Ljava/util/HashMap;

    .line 90
    .line 91
    const/4 p2, 0x3

    .line 92
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Lz7/o;

    .line 101
    .line 102
    invoke-virtual {p4, p1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_5
    const/16 p2, 0x8

    .line 107
    .line 108
    if-ne p1, p2, :cond_6

    .line 109
    .line 110
    iget-object p1, p3, Lcom/yunpan/appmanage/carsdk/x;->l:Ljava/util/HashMap;

    .line 111
    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Lz7/o;

    .line 121
    .line 122
    invoke-virtual {p4, p1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 123
    .line 124
    .line 125
    :cond_6
    :goto_1
    return-void
.end method

.method public G(Landroid/graphics/Bitmap;)I
    .locals 0

    .line 1
    invoke-static {p1}, La6/q;->c(Landroid/graphics/Bitmap;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public H(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/fragment/app/o1;->m(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public I(Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-static {v0, p1}, La2/b;->D(Landroid/media/MediaCodec;Ljava/util/ArrayList;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public J(Ljava/lang/Object;III)V
    .locals 8

    .line 1
    iget-object p1, p0, La2/g1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lcom/yunpan/appmanage/carsdk/x;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 p3, 0x0

    .line 9
    sparse-switch p2, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :sswitch_0
    const/16 v0, 0x2714

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :sswitch_1
    const/16 v0, 0x2710

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :sswitch_2
    const/16 v0, 0x2713

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :sswitch_3
    const/16 v0, 0x2712

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :sswitch_4
    const/16 v0, 0x2711

    .line 27
    .line 28
    :goto_0
    const/4 v1, 0x2

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iget-object p2, p1, Lcom/yunpan/appmanage/carsdk/x;->j:Lcom/yunpan/appmanage/carsdk/u;

    .line 32
    .line 33
    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 34
    .line 35
    .line 36
    iput p3, p1, Lcom/yunpan/appmanage/carsdk/x;->p:I

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object v2, p1, Lcom/yunpan/appmanage/carsdk/x;->j:Lcom/yunpan/appmanage/carsdk/u;

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, La2/g1;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, Lcom/yunpan/appmanage/service/AccService;

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    if-ne p4, v3, :cond_3

    .line 50
    .line 51
    iget p4, p1, Lcom/yunpan/appmanage/carsdk/x;->p:I

    .line 52
    .line 53
    if-lez p4, :cond_1

    .line 54
    .line 55
    iget-object p4, p1, Lcom/yunpan/appmanage/carsdk/x;->n:Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {p4, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p4

    .line 65
    if-eqz p4, :cond_1

    .line 66
    .line 67
    iget-object p4, p1, Lcom/yunpan/appmanage/carsdk/x;->m:Lj$/util/concurrent/ConcurrentHashMap;

    .line 68
    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {p4, v4}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p4

    .line 77
    if-eqz p4, :cond_1

    .line 78
    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    .line 81
    .line 82
    move-result-wide v4

    .line 83
    iget-object p4, p1, Lcom/yunpan/appmanage/carsdk/x;->m:Lj$/util/concurrent/ConcurrentHashMap;

    .line 84
    .line 85
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {p4, v6}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p4

    .line 93
    check-cast p4, Ljava/lang/Long;

    .line 94
    .line 95
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v6

    .line 99
    sub-long/2addr v4, v6

    .line 100
    iget p4, p1, Lcom/yunpan/appmanage/carsdk/x;->q:I

    .line 101
    .line 102
    int-to-long v6, p4

    .line 103
    cmp-long p4, v4, v6

    .line 104
    .line 105
    if-gez p4, :cond_1

    .line 106
    .line 107
    iget-object p2, p1, Lcom/yunpan/appmanage/carsdk/x;->j:Lcom/yunpan/appmanage/carsdk/u;

    .line 108
    .line 109
    invoke-virtual {p2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    .line 111
    .line 112
    iget-object p2, p1, Lcom/yunpan/appmanage/carsdk/x;->n:Ljava/util/HashMap;

    .line 113
    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object p4

    .line 118
    invoke-virtual {p2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    check-cast p2, Lz7/o;

    .line 123
    .line 124
    invoke-virtual {v2, p2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 125
    .line 126
    .line 127
    iput p3, p1, Lcom/yunpan/appmanage/carsdk/x;->p:I

    .line 128
    .line 129
    return-void

    .line 130
    :cond_1
    iget-object p3, p1, Lcom/yunpan/appmanage/carsdk/x;->o:Ljava/util/HashMap;

    .line 131
    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object p4

    .line 136
    invoke-virtual {p3, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p3

    .line 140
    if-eqz p3, :cond_2

    .line 141
    .line 142
    iget-object p3, p1, Lcom/yunpan/appmanage/carsdk/x;->j:Lcom/yunpan/appmanage/carsdk/u;

    .line 143
    .line 144
    iget p4, p1, Lcom/yunpan/appmanage/carsdk/x;->r:I

    .line 145
    .line 146
    int-to-long v2, p4

    .line 147
    invoke-virtual {p3, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 148
    .line 149
    .line 150
    :cond_2
    iput p2, p1, Lcom/yunpan/appmanage/carsdk/x;->p:I

    .line 151
    .line 152
    iget-object p1, p1, Lcom/yunpan/appmanage/carsdk/x;->m:Lj$/util/concurrent/ConcurrentHashMap;

    .line 153
    .line 154
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 159
    .line 160
    .line 161
    move-result-wide p3

    .line 162
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    invoke-virtual {p1, p2, p3}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_3
    if-ne p4, v1, :cond_7

    .line 171
    .line 172
    iget p2, p1, Lcom/yunpan/appmanage/carsdk/x;->p:I

    .line 173
    .line 174
    if-nez p2, :cond_4

    .line 175
    .line 176
    return-void

    .line 177
    :cond_4
    iget-object p2, p1, Lcom/yunpan/appmanage/carsdk/x;->l:Ljava/util/HashMap;

    .line 178
    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object p3

    .line 183
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    if-eqz p2, :cond_7

    .line 188
    .line 189
    iget-object p2, p1, Lcom/yunpan/appmanage/carsdk/x;->o:Ljava/util/HashMap;

    .line 190
    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object p3

    .line 195
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    if-nez p2, :cond_5

    .line 200
    .line 201
    iget-object p2, p1, Lcom/yunpan/appmanage/carsdk/x;->n:Ljava/util/HashMap;

    .line 202
    .line 203
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object p3

    .line 207
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result p2

    .line 211
    if-nez p2, :cond_5

    .line 212
    .line 213
    iget-object p1, p1, Lcom/yunpan/appmanage/carsdk/x;->l:Ljava/util/HashMap;

    .line 214
    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    check-cast p1, Lz7/o;

    .line 224
    .line 225
    invoke-virtual {v2, p1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 226
    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_5
    iget-object p2, p1, Lcom/yunpan/appmanage/carsdk/x;->n:Ljava/util/HashMap;

    .line 230
    .line 231
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object p3

    .line 235
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result p2

    .line 239
    if-nez p2, :cond_6

    .line 240
    .line 241
    iget-object p1, p1, Lcom/yunpan/appmanage/carsdk/x;->l:Ljava/util/HashMap;

    .line 242
    .line 243
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    check-cast p1, Lz7/o;

    .line 252
    .line 253
    invoke-virtual {v2, p1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 254
    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    iput v3, p2, Landroid/os/Message;->what:I

    .line 262
    .line 263
    iput v0, p2, Landroid/os/Message;->arg1:I

    .line 264
    .line 265
    iget-object p3, p1, Lcom/yunpan/appmanage/carsdk/x;->j:Lcom/yunpan/appmanage/carsdk/u;

    .line 266
    .line 267
    iget p1, p1, Lcom/yunpan/appmanage/carsdk/x;->q:I

    .line 268
    .line 269
    add-int/lit8 p1, p1, 0x1e

    .line 270
    .line 271
    int-to-long v0, p1

    .line 272
    invoke-virtual {p3, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 273
    .line 274
    .line 275
    :cond_7
    :goto_1
    return-void

    .line 276
    nop

    .line 277
    :sswitch_data_0
    .sparse-switch
        0x41020100 -> :sswitch_4
        0x41020200 -> :sswitch_3
        0x41020300 -> :sswitch_2
        0x41020400 -> :sswitch_1
        0x41020800 -> :sswitch_0
    .end sparse-switch
.end method

.method public K(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {v0, v1, p1}, La2/g1;->R(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public L(Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-static {v0, p1}, La2/b;->r(Landroid/media/MediaCodec;Ljava/util/ArrayList;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public M(Lf5/f;)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, La2/g1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv3/f;

    .line 4
    .line 5
    invoke-virtual {v0}, Lv3/f;->l()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lj5/i;

    .line 10
    .line 11
    :try_start_0
    iget-object v1, v0, Lj5/i;->a:Ljava/security/MessageDigest;

    .line 12
    .line 13
    invoke-interface {p1, v1}, Lf5/f;->b(Ljava/security/MessageDigest;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, v0, Lj5/i;->a:Ljava/security/MessageDigest;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object v1, La6/q;->b:[C

    .line 23
    .line 24
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    :try_start_1
    array-length v3, p1

    .line 27
    if-ge v2, v3, :cond_0

    .line 28
    .line 29
    aget-byte v3, p1, v2

    .line 30
    .line 31
    and-int/lit16 v4, v3, 0xff

    .line 32
    .line 33
    mul-int/lit8 v5, v2, 0x2

    .line 34
    .line 35
    ushr-int/lit8 v4, v4, 0x4

    .line 36
    .line 37
    sget-object v6, La6/q;->a:[C

    .line 38
    .line 39
    aget-char v4, v6, v4

    .line 40
    .line 41
    aput-char v4, v1, v5

    .line 42
    .line 43
    add-int/lit8 v5, v5, 0x1

    .line 44
    .line 45
    and-int/lit8 v3, v3, 0xf

    .line 46
    .line 47
    aget-char v3, v6, v3

    .line 48
    .line 49
    aput-char v3, v1, v5

    .line 50
    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/String;

    .line 55
    .line 56
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    .line 57
    .line 58
    .line 59
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    iget-object v1, p0, La2/g1;->c:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Lv3/f;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Lv3/f;->L(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    return-object p1

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    :catchall_1
    move-exception p1

    .line 72
    iget-object v1, p0, La2/g1;->c:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, Lv3/f;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lv3/f;->L(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :goto_1
    throw p1

    .line 81
    :goto_2
    goto :goto_1
.end method

.method public N(Lba/i;)Ld2/f;
    .locals 8

    .line 1
    const-string v0, "createCodec:"

    .line 2
    .line 3
    iget-object v1, p1, Lba/i;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ld2/q;

    .line 6
    .line 7
    iget-object v1, v1, Ld2/q;->a:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Ltb/a;->k(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 26
    .line 27
    .line 28
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 29
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    const/16 v3, 0x24

    .line 32
    .line 33
    if-lt v1, v3, :cond_0

    .line 34
    .line 35
    new-instance v3, La1/i;

    .line 36
    .line 37
    const/16 v4, 0xf

    .line 38
    .line 39
    invoke-direct {v3, v4, v0}, La1/i;-><init>(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const/4 v4, 0x4

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    new-instance v3, Ld2/h;

    .line 47
    .line 48
    iget-object v4, p0, La2/g1;->c:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v4, Ld2/e;

    .line 51
    .line 52
    invoke-virtual {v4}, Ld2/e;->get()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Landroid/os/HandlerThread;

    .line 57
    .line 58
    invoke-direct {v3, v0, v4}, Ld2/h;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V

    .line 59
    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    :goto_0
    new-instance v5, Ld2/f;

    .line 63
    .line 64
    iget-object v6, p0, La2/g1;->b:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v6, Ld2/e;

    .line 67
    .line 68
    invoke-virtual {v6}, Ld2/e;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Landroid/os/HandlerThread;

    .line 73
    .line 74
    iget-object v7, p1, Lba/i;->f:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v7, Lv3/f;

    .line 77
    .line 78
    invoke-direct {v5, v0, v6, v3, v7}, Ld2/f;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Ld2/o;Lv3/f;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    .line 80
    .line 81
    :try_start_2
    invoke-static {}, Ltb/a;->h()V

    .line 82
    .line 83
    .line 84
    iget-object v2, p1, Lba/i;->d:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v2, Landroid/view/Surface;

    .line 87
    .line 88
    if-nez v2, :cond_1

    .line 89
    .line 90
    iget-object v3, p1, Lba/i;->a:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v3, Ld2/q;

    .line 93
    .line 94
    iget-boolean v3, v3, Ld2/q;->h:Z

    .line 95
    .line 96
    if-eqz v3, :cond_1

    .line 97
    .line 98
    const/16 v3, 0x23

    .line 99
    .line 100
    if-lt v1, v3, :cond_1

    .line 101
    .line 102
    or-int/lit8 v4, v4, 0x8

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catch_1
    move-exception p1

    .line 106
    move-object v2, v5

    .line 107
    goto :goto_2

    .line 108
    :cond_1
    :goto_1
    iget-object v1, p1, Lba/i;->b:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v1, Landroid/media/MediaFormat;

    .line 111
    .line 112
    iget-object p1, p1, Lba/i;->e:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast p1, Landroid/media/MediaCrypto;

    .line 115
    .line 116
    invoke-static {v5, v1, v2, p1, v4}, Ld2/f;->b(Ld2/f;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 117
    .line 118
    .line 119
    return-object v5

    .line 120
    :catch_2
    move-exception p1

    .line 121
    move-object v0, v2

    .line 122
    :goto_2
    if-nez v2, :cond_2

    .line 123
    .line 124
    if-eqz v0, :cond_3

    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_2
    invoke-virtual {v2}, Ld2/f;->a()V

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_3
    throw p1
.end method

.method public P(Li5/i;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, La2/g1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Li5/e;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Li5/e;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Li5/e;-><init>(Li5/i;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p1}, Li5/i;->a()V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v1, Li5/e;->d:Li5/e;

    .line 26
    .line 27
    iget-object v0, v1, Li5/e;->c:Li5/e;

    .line 28
    .line 29
    iput-object v0, p1, Li5/e;->c:Li5/e;

    .line 30
    .line 31
    iget-object v0, v1, Li5/e;->c:Li5/e;

    .line 32
    .line 33
    iput-object p1, v0, Li5/e;->d:Li5/e;

    .line 34
    .line 35
    iget-object p1, p0, La2/g1;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Li5/e;

    .line 38
    .line 39
    iput-object p1, v1, Li5/e;->d:Li5/e;

    .line 40
    .line 41
    iget-object p1, p1, Li5/e;->c:Li5/e;

    .line 42
    .line 43
    iput-object p1, v1, Li5/e;->c:Li5/e;

    .line 44
    .line 45
    iput-object v1, p1, Li5/e;->d:Li5/e;

    .line 46
    .line 47
    iget-object p1, v1, Li5/e;->d:Li5/e;

    .line 48
    .line 49
    iput-object v1, p1, Li5/e;->c:Li5/e;

    .line 50
    .line 51
    iget-object p1, v1, Li5/e;->b:Ljava/util/ArrayList;

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/4 p1, 0x0

    .line 61
    :goto_1
    if-lez p1, :cond_2

    .line 62
    .line 63
    iget-object v0, v1, Li5/e;->b:Ljava/util/ArrayList;

    .line 64
    .line 65
    add-int/lit8 p1, p1, -0x1

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    const/4 p1, 0x0

    .line 73
    :goto_2
    return-object p1
.end method

.method public Q(Lr1/d;Lr1/p;)La2/p;
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1d

    .line 10
    .line 11
    if-lt v0, v1, :cond_e

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    iget v2, p2, Lr1/p;->H:I

    .line 15
    .line 16
    if-ne v2, v1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_7

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, La2/g1;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Ljava/lang/Boolean;

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    iget-object v1, p0, La2/g1;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Landroid/content/Context;

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    invoke-static {v1}, Ls1/g;->v(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v5, "offloadVariableRateSupported"

    .line 44
    .line 45
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    const-string v5, "offloadVariableRateSupported=1"

    .line 52
    .line 53
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const/4 v1, 0x0

    .line 62
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iput-object v1, p0, La2/g1;->c:Ljava/lang/Object;

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 70
    .line 71
    iput-object v1, p0, La2/g1;->c:Ljava/lang/Object;

    .line 72
    .line 73
    :goto_1
    iget-object v1, p0, La2/g1;->c:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, Ljava/lang/Boolean;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    :goto_2
    iget-object v5, p2, Lr1/p;->o:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    iget-object v6, p2, Lr1/p;->k:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v5, v6}, Lr1/e0;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_d

    .line 93
    .line 94
    invoke-static {v5}, Lu1/f0;->l(I)I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-ge v0, v6, :cond_4

    .line 99
    .line 100
    goto/16 :goto_6

    .line 101
    .line 102
    :cond_4
    iget p2, p2, Lr1/p;->G:I

    .line 103
    .line 104
    invoke-static {p2}, Lu1/f0;->n(I)I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-nez p2, :cond_5

    .line 109
    .line 110
    sget-object p1, La2/p;->d:La2/p;

    .line 111
    .line 112
    return-object p1

    .line 113
    :cond_5
    :try_start_0
    invoke-static {v2, p2, v5}, Lu1/f0;->m(III)Landroid/media/AudioFormat;

    .line 114
    .line 115
    .line 116
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    const/16 v2, 0x21

    .line 118
    .line 119
    if-lt v0, v2, :cond_8

    .line 120
    .line 121
    invoke-virtual {p1}, Lr1/d;->a()Landroid/media/AudioAttributes;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-static {p2, p1}, La2/e;->a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    and-int/lit8 p2, p1, 0x1

    .line 130
    .line 131
    if-nez p2, :cond_6

    .line 132
    .line 133
    sget-object p1, La2/p;->d:La2/p;

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_6
    const/4 p2, 0x3

    .line 137
    and-int/2addr p1, p2

    .line 138
    if-ne p1, p2, :cond_7

    .line 139
    .line 140
    const/4 v4, 0x1

    .line 141
    :cond_7
    new-instance p1, La2/o;

    .line 142
    .line 143
    invoke-direct {p1}, La2/o;-><init>()V

    .line 144
    .line 145
    .line 146
    iput-boolean v3, p1, La2/o;->a:Z

    .line 147
    .line 148
    iput-boolean v4, p1, La2/o;->b:Z

    .line 149
    .line 150
    iput-boolean v1, p1, La2/o;->c:Z

    .line 151
    .line 152
    invoke-virtual {p1}, La2/o;->a()La2/p;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    :goto_3
    return-object p1

    .line 157
    :cond_8
    const/16 v2, 0x1f

    .line 158
    .line 159
    if-lt v0, v2, :cond_b

    .line 160
    .line 161
    invoke-virtual {p1}, Lr1/d;->a()Landroid/media/AudioAttributes;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {p2, p1}, La2/b;->d(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-nez p1, :cond_9

    .line 170
    .line 171
    sget-object p1, La2/p;->d:La2/p;

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_9
    new-instance p2, La2/o;

    .line 175
    .line 176
    invoke-direct {p2}, La2/o;-><init>()V

    .line 177
    .line 178
    .line 179
    const/16 v2, 0x20

    .line 180
    .line 181
    if-le v0, v2, :cond_a

    .line 182
    .line 183
    const/4 v0, 0x2

    .line 184
    if-ne p1, v0, :cond_a

    .line 185
    .line 186
    const/4 v4, 0x1

    .line 187
    :cond_a
    iput-boolean v3, p2, La2/o;->a:Z

    .line 188
    .line 189
    iput-boolean v4, p2, La2/o;->b:Z

    .line 190
    .line 191
    iput-boolean v1, p2, La2/o;->c:Z

    .line 192
    .line 193
    invoke-virtual {p2}, La2/o;->a()La2/p;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    :goto_4
    return-object p1

    .line 198
    :cond_b
    invoke-virtual {p1}, Lr1/d;->a()Landroid/media/AudioAttributes;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-static {p2, p1}, La2/c;->A(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-nez p1, :cond_c

    .line 207
    .line 208
    sget-object p1, La2/p;->d:La2/p;

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_c
    new-instance p1, La2/o;

    .line 212
    .line 213
    invoke-direct {p1}, La2/o;-><init>()V

    .line 214
    .line 215
    .line 216
    iput-boolean v3, p1, La2/o;->a:Z

    .line 217
    .line 218
    iput-boolean v1, p1, La2/o;->c:Z

    .line 219
    .line 220
    invoke-virtual {p1}, La2/o;->a()La2/p;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    :goto_5
    return-object p1

    .line 225
    :catch_0
    sget-object p1, La2/p;->d:La2/p;

    .line 226
    .line 227
    return-object p1

    .line 228
    :cond_d
    :goto_6
    sget-object p1, La2/p;->d:La2/p;

    .line 229
    .line 230
    return-object p1

    .line 231
    :cond_e
    :goto_7
    sget-object p1, La2/p;->d:La2/p;

    .line 232
    .line 233
    return-object p1
.end method

.method public S(II[B)V
    .locals 1

    .line 1
    :cond_0
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/io/InputStream;

    .line 4
    .line 5
    invoke-virtual {v0, p3, p1, p2}, Ljava/io/InputStream;->read([BII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_1

    .line 10
    .line 11
    add-int/2addr p1, v0

    .line 12
    sub-int/2addr p2, v0

    .line 13
    if-gtz p2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 17
    .line 18
    const-string p2, "End of IO Stream Read"

    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :goto_0
    throw p1

    .line 25
    :goto_1
    goto :goto_0
.end method

.method public T(Lf5/f;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La6/m;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, La2/g1;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, La6/m;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, La6/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/String;

    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, La2/g1;->M(Lf5/f;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_0
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v2, v0

    .line 26
    check-cast v2, La6/m;

    .line 27
    .line 28
    monitor-enter v2

    .line 29
    :try_start_1
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, La6/m;

    .line 32
    .line 33
    invoke-virtual {v0, p1, v1}, La6/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    monitor-exit v2

    .line 37
    return-object v1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p1

    .line 41
    :catchall_1
    move-exception p1

    .line 42
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    throw p1
.end method

.method public U(Ljava/lang/CharSequence;IILandroidx/emoji2/text/p;)Z
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p4, Landroidx/emoji2/text/p;->c:I

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    if-nez v1, :cond_d

    .line 7
    .line 8
    iget-object v1, p0, La2/g1;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Landroidx/emoji2/text/f;

    .line 11
    .line 12
    invoke-virtual {p4}, Landroidx/emoji2/text/p;->c()Lh1/a;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const/16 v5, 0x8

    .line 17
    .line 18
    invoke-virtual {v4, v5}, Lh1/c;->a(I)I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    iget-object v6, v4, Lh1/c;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v6, Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    iget v4, v4, Lh1/c;->a:I

    .line 29
    .line 30
    add-int/2addr v5, v4

    .line 31
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v4, 0x0

    .line 37
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 v6, 0x17

    .line 43
    .line 44
    if-ge v5, v6, :cond_1

    .line 45
    .line 46
    if-le v4, v5, :cond_1

    .line 47
    .line 48
    :goto_1
    const/4 p1, 0x0

    .line 49
    goto/16 :goto_6

    .line 50
    .line 51
    :cond_1
    sget-object v4, Landroidx/emoji2/text/f;->b:Ljava/lang/ThreadLocal;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    if-nez v5, :cond_2

    .line 58
    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 74
    .line 75
    .line 76
    :goto_2
    if-ge p2, p3, :cond_3

    .line 77
    .line 78
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    add-int/2addr p2, v0

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    iget-object p1, v1, Landroidx/emoji2/text/f;->a:Landroid/text/TextPaint;

    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    sget-object p3, Lp0/e;->a:Ljava/lang/ThreadLocal;

    .line 94
    .line 95
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 96
    .line 97
    if-lt p3, v6, :cond_4

    .line 98
    .line 99
    invoke-static {p1, p2}, Lp0/d;->a(Landroid/graphics/Paint;Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    goto/16 :goto_6

    .line 104
    .line 105
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    if-ne p3, v0, :cond_5

    .line 110
    .line 111
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_5

    .line 120
    .line 121
    :goto_3
    const/4 p1, 0x1

    .line 122
    goto/16 :goto_6

    .line 123
    .line 124
    :cond_5
    const-string v1, "\udb3f\udffd"

    .line 125
    .line 126
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    const-string v5, "m"

    .line 131
    .line 132
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    const/4 v7, 0x0

    .line 141
    cmpl-float v8, v6, v7

    .line 142
    .line 143
    if-nez v8, :cond_6

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    invoke-virtual {p2, v3, v8}, Ljava/lang/String;->codePointCount(II)I

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    if-le v8, v0, :cond_9

    .line 155
    .line 156
    const/high16 v8, 0x40000000    # 2.0f

    .line 157
    .line 158
    mul-float v5, v5, v8

    .line 159
    .line 160
    cmpl-float v5, v6, v5

    .line 161
    .line 162
    if-lez v5, :cond_7

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_7
    const/4 v5, 0x0

    .line 166
    :goto_4
    if-ge v5, p3, :cond_8

    .line 167
    .line 168
    invoke-virtual {p2, v5}, Ljava/lang/String;->codePointAt(I)I

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    add-int/2addr v8, v5

    .line 177
    invoke-virtual {p1, p2, v5, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    add-float/2addr v7, v5

    .line 182
    move v5, v8

    .line 183
    goto :goto_4

    .line 184
    :cond_8
    cmpl-float v5, v6, v7

    .line 185
    .line 186
    if-ltz v5, :cond_9

    .line 187
    .line 188
    goto/16 :goto_1

    .line 189
    .line 190
    :cond_9
    cmpl-float v4, v6, v4

    .line 191
    .line 192
    if-eqz v4, :cond_a

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_a
    sget-object v4, Lp0/e;->a:Ljava/lang/ThreadLocal;

    .line 196
    .line 197
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    check-cast v5, Lw0/c;

    .line 202
    .line 203
    if-nez v5, :cond_b

    .line 204
    .line 205
    new-instance v5, Lw0/c;

    .line 206
    .line 207
    new-instance v6, Landroid/graphics/Rect;

    .line 208
    .line 209
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 210
    .line 211
    .line 212
    new-instance v7, Landroid/graphics/Rect;

    .line 213
    .line 214
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-direct {v5, v6, v7}, Lw0/c;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_b
    iget-object v4, v5, Lw0/c;->a:Landroid/graphics/Rect;

    .line 225
    .line 226
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 227
    .line 228
    .line 229
    iget-object v4, v5, Lw0/c;->b:Landroid/graphics/Rect;

    .line 230
    .line 231
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 232
    .line 233
    .line 234
    :goto_5
    iget-object v4, v5, Lw0/c;->a:Landroid/graphics/Rect;

    .line 235
    .line 236
    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 237
    .line 238
    .line 239
    iget-object v1, v5, Lw0/c;->b:Landroid/graphics/Rect;

    .line 240
    .line 241
    invoke-virtual {p1, p2, v3, p3, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    xor-int/2addr p1, v0

    .line 249
    :goto_6
    if-eqz p1, :cond_c

    .line 250
    .line 251
    const/4 p1, 0x2

    .line 252
    goto :goto_7

    .line 253
    :cond_c
    const/4 p1, 0x1

    .line 254
    :goto_7
    iput p1, p4, Landroidx/emoji2/text/p;->c:I

    .line 255
    .line 256
    :cond_d
    iget p1, p4, Landroidx/emoji2/text/p;->c:I

    .line 257
    .line 258
    if-ne p1, v2, :cond_e

    .line 259
    .line 260
    goto :goto_8

    .line 261
    :cond_e
    const/4 v0, 0x0

    .line 262
    :goto_8
    return v0
.end method

.method public V(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 11

    .line 1
    new-instance v0, Li0/n;

    .line 2
    .line 3
    invoke-direct {v0}, Li0/n;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v1, :cond_10

    .line 13
    .line 14
    invoke-interface {p2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-interface {p2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    if-eqz v4, :cond_f

    .line 23
    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    goto/16 :goto_b

    .line 27
    .line 28
    :cond_0
    const-string v6, "id"

    .line 29
    .line 30
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_f

    .line 35
    .line 36
    const-string v1, "/"

    .line 37
    .line 38
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/4 v3, 0x1

    .line 43
    const/4 v4, -0x1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    const/16 v1, 0x2f

    .line 47
    .line 48
    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(I)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    add-int/2addr v1, v3

    .line 53
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-virtual {v7, v1, v6, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const/4 v1, -0x1

    .line 71
    :goto_1
    if-ne v1, v4, :cond_2

    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-le v6, v3, :cond_2

    .line 78
    .line 79
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    :cond_2
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    const/4 v6, 0x0

    .line 92
    move-object v7, v6

    .line 93
    :goto_2
    if-eq v5, v3, :cond_e

    .line 94
    .line 95
    if-eqz v5, :cond_d

    .line 96
    .line 97
    const/4 v8, 0x3

    .line 98
    const/4 v9, 0x2

    .line 99
    if-eq v5, v9, :cond_6

    .line 100
    .line 101
    if-eq v5, v8, :cond_3

    .line 102
    .line 103
    goto/16 :goto_7

    .line 104
    .line 105
    :cond_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 110
    .line 111
    invoke-virtual {v5, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    sparse-switch v10, :sswitch_data_0

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :sswitch_0
    const-string v10, "constraintset"

    .line 124
    .line 125
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-eqz v5, :cond_4

    .line 130
    .line 131
    const/4 v5, 0x0

    .line 132
    goto :goto_4

    .line 133
    :catch_0
    move-exception p1

    .line 134
    goto/16 :goto_8

    .line 135
    .line 136
    :catch_1
    move-exception p1

    .line 137
    goto/16 :goto_9

    .line 138
    .line 139
    :sswitch_1
    const-string v10, "constraintoverride"

    .line 140
    .line 141
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-eqz v5, :cond_4

    .line 146
    .line 147
    const/4 v5, 0x2

    .line 148
    goto :goto_4

    .line 149
    :sswitch_2
    const-string v10, "constraint"

    .line 150
    .line 151
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-eqz v5, :cond_4

    .line 156
    .line 157
    const/4 v5, 0x1

    .line 158
    goto :goto_4

    .line 159
    :sswitch_3
    const-string v10, "guideline"

    .line 160
    .line 161
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    if-eqz v5, :cond_4

    .line 166
    .line 167
    const/4 v5, 0x3

    .line 168
    goto :goto_4

    .line 169
    :cond_4
    :goto_3
    const/4 v5, -0x1

    .line 170
    :goto_4
    if-eqz v5, :cond_e

    .line 171
    .line 172
    if-eq v5, v3, :cond_5

    .line 173
    .line 174
    if-eq v5, v9, :cond_5

    .line 175
    .line 176
    if-eq v5, v8, :cond_5

    .line 177
    .line 178
    goto/16 :goto_7

    .line 179
    .line 180
    :cond_5
    iget-object v5, v0, Li0/n;->c:Ljava/util/HashMap;

    .line 181
    .line 182
    iget v8, v7, Li0/i;->a:I

    .line 183
    .line 184
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-object v7, v6

    .line 192
    goto/16 :goto_7

    .line 193
    .line 194
    :cond_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 199
    .line 200
    .line 201
    move-result v10

    .line 202
    sparse-switch v10, :sswitch_data_1

    .line 203
    .line 204
    .line 205
    goto/16 :goto_5

    .line 206
    .line 207
    :sswitch_4
    const-string v8, "Constraint"

    .line 208
    .line 209
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    if-eqz v5, :cond_7

    .line 214
    .line 215
    const/4 v8, 0x0

    .line 216
    goto :goto_6

    .line 217
    :sswitch_5
    const-string v8, "CustomAttribute"

    .line 218
    .line 219
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    if-eqz v5, :cond_7

    .line 224
    .line 225
    const/16 v8, 0x8

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :sswitch_6
    const-string v9, "Barrier"

    .line 229
    .line 230
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    if-eqz v5, :cond_7

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :sswitch_7
    const-string v8, "CustomMethod"

    .line 238
    .line 239
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    if-eqz v5, :cond_7

    .line 244
    .line 245
    const/16 v8, 0x9

    .line 246
    .line 247
    goto :goto_6

    .line 248
    :sswitch_8
    const-string v8, "Guideline"

    .line 249
    .line 250
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    if-eqz v5, :cond_7

    .line 255
    .line 256
    const/4 v8, 0x2

    .line 257
    goto :goto_6

    .line 258
    :sswitch_9
    const-string v8, "Transform"

    .line 259
    .line 260
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    if-eqz v5, :cond_7

    .line 265
    .line 266
    const/4 v8, 0x5

    .line 267
    goto :goto_6

    .line 268
    :sswitch_a
    const-string v8, "PropertySet"

    .line 269
    .line 270
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    if-eqz v5, :cond_7

    .line 275
    .line 276
    const/4 v8, 0x4

    .line 277
    goto :goto_6

    .line 278
    :sswitch_b
    const-string v8, "ConstraintOverride"

    .line 279
    .line 280
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    if-eqz v5, :cond_7

    .line 285
    .line 286
    const/4 v8, 0x1

    .line 287
    goto :goto_6

    .line 288
    :sswitch_c
    const-string v8, "Motion"

    .line 289
    .line 290
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    if-eqz v5, :cond_7

    .line 295
    .line 296
    const/4 v8, 0x7

    .line 297
    goto :goto_6

    .line 298
    :sswitch_d
    const-string v8, "Layout"

    .line 299
    .line 300
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    if-eqz v5, :cond_7

    .line 305
    .line 306
    const/4 v8, 0x6

    .line 307
    goto :goto_6

    .line 308
    :cond_7
    :goto_5
    const/4 v8, -0x1

    .line 309
    :goto_6
    const-string v5, "XML parser error must be within a Constraint "

    .line 310
    .line 311
    packed-switch v8, :pswitch_data_0

    .line 312
    .line 313
    .line 314
    goto/16 :goto_7

    .line 315
    .line 316
    :pswitch_0
    if-eqz v7, :cond_8

    .line 317
    .line 318
    :try_start_1
    iget-object v5, v7, Li0/i;->f:Ljava/util/HashMap;

    .line 319
    .line 320
    invoke-static {p1, p2, v5}, Li0/b;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;)V

    .line 321
    .line 322
    .line 323
    goto/16 :goto_7

    .line 324
    .line 325
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    .line 326
    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 336
    .line 337
    .line 338
    move-result p2

    .line 339
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p2

    .line 346
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    throw p1

    .line 350
    :pswitch_1
    if-eqz v7, :cond_9

    .line 351
    .line 352
    iget-object v5, v7, Li0/i;->c:Li0/k;

    .line 353
    .line 354
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 355
    .line 356
    .line 357
    move-result-object v8

    .line 358
    invoke-virtual {v5, p1, v8}, Li0/k;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_7

    .line 362
    .line 363
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 364
    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 374
    .line 375
    .line 376
    move-result p2

    .line 377
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    throw p1

    .line 388
    :pswitch_2
    if-eqz v7, :cond_a

    .line 389
    .line 390
    iget-object v5, v7, Li0/i;->d:Li0/j;

    .line 391
    .line 392
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 393
    .line 394
    .line 395
    move-result-object v8

    .line 396
    invoke-virtual {v5, p1, v8}, Li0/j;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 397
    .line 398
    .line 399
    goto/16 :goto_7

    .line 400
    .line 401
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    .line 402
    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 412
    .line 413
    .line 414
    move-result p2

    .line 415
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object p2

    .line 422
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    throw p1

    .line 426
    :pswitch_3
    if-eqz v7, :cond_b

    .line 427
    .line 428
    iget-object v5, v7, Li0/i;->e:Li0/m;

    .line 429
    .line 430
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 431
    .line 432
    .line 433
    move-result-object v8

    .line 434
    invoke-virtual {v5, p1, v8}, Li0/m;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 435
    .line 436
    .line 437
    goto :goto_7

    .line 438
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    .line 439
    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 449
    .line 450
    .line 451
    move-result p2

    .line 452
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object p2

    .line 459
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    throw p1

    .line 463
    :pswitch_4
    if-eqz v7, :cond_c

    .line 464
    .line 465
    iget-object v5, v7, Li0/i;->b:Li0/l;

    .line 466
    .line 467
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 468
    .line 469
    .line 470
    move-result-object v8

    .line 471
    invoke-virtual {v5, p1, v8}, Li0/l;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 472
    .line 473
    .line 474
    goto :goto_7

    .line 475
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    .line 476
    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    .line 478
    .line 479
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 486
    .line 487
    .line 488
    move-result p2

    .line 489
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object p2

    .line 496
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    throw p1

    .line 500
    :pswitch_5
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 501
    .line 502
    .line 503
    move-result-object v5

    .line 504
    invoke-static {p1, v5, v2}, Li0/n;->d(Landroid/content/Context;Landroid/util/AttributeSet;Z)Li0/i;

    .line 505
    .line 506
    .line 507
    move-result-object v7

    .line 508
    iget-object v5, v7, Li0/i;->d:Li0/j;

    .line 509
    .line 510
    iput v3, v5, Li0/j;->h0:I

    .line 511
    .line 512
    goto :goto_7

    .line 513
    :pswitch_6
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 514
    .line 515
    .line 516
    move-result-object v5

    .line 517
    invoke-static {p1, v5, v2}, Li0/n;->d(Landroid/content/Context;Landroid/util/AttributeSet;Z)Li0/i;

    .line 518
    .line 519
    .line 520
    move-result-object v7

    .line 521
    iget-object v5, v7, Li0/i;->d:Li0/j;

    .line 522
    .line 523
    iput-boolean v3, v5, Li0/j;->a:Z

    .line 524
    .line 525
    goto :goto_7

    .line 526
    :pswitch_7
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    invoke-static {p1, v5, v3}, Li0/n;->d(Landroid/content/Context;Landroid/util/AttributeSet;Z)Li0/i;

    .line 531
    .line 532
    .line 533
    move-result-object v7

    .line 534
    goto :goto_7

    .line 535
    :pswitch_8
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 536
    .line 537
    .line 538
    move-result-object v5

    .line 539
    invoke-static {p1, v5, v2}, Li0/n;->d(Landroid/content/Context;Landroid/util/AttributeSet;Z)Li0/i;

    .line 540
    .line 541
    .line 542
    move-result-object v7

    .line 543
    goto :goto_7

    .line 544
    :cond_d
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    :goto_7
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 548
    .line 549
    .line 550
    move-result v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 551
    goto/16 :goto_2

    .line 552
    .line 553
    :goto_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 554
    .line 555
    .line 556
    goto :goto_a

    .line 557
    :goto_9
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 558
    .line 559
    .line 560
    :cond_e
    :goto_a
    iget-object p1, p0, La2/g1;->c:Ljava/lang/Object;

    .line 561
    .line 562
    check-cast p1, Landroid/util/SparseArray;

    .line 563
    .line 564
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 565
    .line 566
    .line 567
    goto :goto_c

    .line 568
    :cond_f
    :goto_b
    add-int/lit8 v3, v3, 0x1

    .line 569
    .line 570
    goto/16 :goto_0

    .line 571
    .line 572
    :cond_10
    :goto_c
    return-void

    .line 573
    :sswitch_data_0
    .sparse-switch
        -0x7bb8f310 -> :sswitch_3
        -0xb58ea23 -> :sswitch_2
        0x196d04a9 -> :sswitch_1
        0x7feafd65 -> :sswitch_0
    .end sparse-switch

    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    :sswitch_data_1
    .sparse-switch
        -0x78c018b6 -> :sswitch_d
        -0x7648542a -> :sswitch_c
        -0x74f4db17 -> :sswitch_b
        -0x4bab3dd3 -> :sswitch_a
        -0x49cf74b4 -> :sswitch_9
        -0x446d330 -> :sswitch_8
        0x15d883d2 -> :sswitch_7
        0x4f5d3b97 -> :sswitch_6
        0x6acd460b -> :sswitch_5
        0x6b78f1fd -> :sswitch_4
    .end sparse-switch

    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public W(Li5/i;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, La2/g1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Li5/e;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Li5/e;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Li5/e;-><init>(Li5/i;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v1, Li5/e;->d:Li5/e;

    .line 19
    .line 20
    iget-object v2, p0, La2/g1;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Li5/e;

    .line 23
    .line 24
    iget-object v3, v2, Li5/e;->d:Li5/e;

    .line 25
    .line 26
    iput-object v3, v1, Li5/e;->d:Li5/e;

    .line 27
    .line 28
    iput-object v2, v1, Li5/e;->c:Li5/e;

    .line 29
    .line 30
    iput-object v1, v2, Li5/e;->d:Li5/e;

    .line 31
    .line 32
    iget-object v2, v1, Li5/e;->d:Li5/e;

    .line 33
    .line 34
    iput-object v1, v2, Li5/e;->c:Li5/e;

    .line 35
    .line 36
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p1}, Li5/i;->a()V

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object p1, v1, Li5/e;->b:Ljava/util/ArrayList;

    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    new-instance p1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, v1, Li5/e;->b:Ljava/util/ArrayList;

    .line 53
    .line 54
    :cond_1
    iget-object p1, v1, Li5/e;->b:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public X(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "Removed the wrong lock, expected to remove: "

    .line 2
    .line 3
    const-string v1, "Cannot release a lock that is not held, safeKey: "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v2, p0, La2/g1;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v2, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "Argument must not be null"

    .line 15
    .line 16
    invoke-static {v2, v3}, La6/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    check-cast v2, Lj5/b;

    .line 20
    .line 21
    iget v3, v2, Lj5/b;->b:I

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    if-lt v3, v4, :cond_2

    .line 25
    .line 26
    sub-int/2addr v3, v4

    .line 27
    iput v3, v2, Lj5/b;->b:I

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, La2/g1;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lj5/b;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    iget-object p1, p0, La2/g1;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Lj5/c;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lj5/c;->b(Lj5/b;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, ", but actually removed: "

    .line 68
    .line 69
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, ", safeKey: "

    .line 76
    .line 77
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {v3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v3

    .line 91
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object p1, v2, Lj5/b;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p1, ", interestedThreads: "

    .line 109
    .line 110
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget p1, v2, Lj5/b;->b:I

    .line 114
    .line 115
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    throw p1
.end method

.method public Y()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Li5/e;

    .line 4
    .line 5
    iget-object v1, v0, Li5/e;->d:Li5/e;

    .line 6
    .line 7
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_3

    .line 13
    .line 14
    iget-object v2, v1, Li5/e;->b:Ljava/util/ArrayList;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    :goto_1
    if-lez v2, :cond_1

    .line 25
    .line 26
    iget-object v3, v1, Li5/e;->b:Ljava/util/ArrayList;

    .line 27
    .line 28
    add-int/lit8 v2, v2, -0x1

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    :cond_1
    if-eqz v3, :cond_2

    .line 35
    .line 36
    return-object v3

    .line 37
    :cond_2
    iget-object v2, v1, Li5/e;->d:Li5/e;

    .line 38
    .line 39
    iget-object v3, v1, Li5/e;->c:Li5/e;

    .line 40
    .line 41
    iput-object v3, v2, Li5/e;->c:Li5/e;

    .line 42
    .line 43
    iget-object v3, v1, Li5/e;->c:Li5/e;

    .line 44
    .line 45
    iput-object v2, v3, Li5/e;->d:Li5/e;

    .line 46
    .line 47
    iget-object v2, p0, La2/g1;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Ljava/util/HashMap;

    .line 50
    .line 51
    iget-object v3, v1, Li5/e;->a:Li5/i;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    invoke-interface {v3}, Li5/i;->a()V

    .line 57
    .line 58
    .line 59
    iget-object v1, v1, Li5/e;->d:Li5/e;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    return-object v3
.end method

.method public Z()V
    .locals 2

    .line 1
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La9/a;

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    iput v1, v0, La9/a;->b:I

    .line 7
    .line 8
    return-void
.end method

.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, La2/g1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv3/f;

    .line 4
    .line 5
    iget-object v1, p0, La2/g1;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/media/MediaCodec;

    .line 8
    .line 9
    const/16 v2, 0x23

    .line 10
    .line 11
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v4, 0x1e

    .line 14
    .line 15
    if-lt v3, v4, :cond_0

    .line 16
    .line 17
    const/16 v4, 0x21

    .line 18
    .line 19
    if-ge v3, v4, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v3

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    if-lt v3, v2, :cond_1

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lv3/f;->M(Landroid/media/MediaCodec;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 39
    .line 40
    if-lt v4, v2, :cond_2

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lv3/f;->M(Landroid/media/MediaCodec;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 48
    .line 49
    .line 50
    throw v3
.end method

.method public a0(Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lv1/q;

    .line 13
    .line 14
    iget v1, v1, Lv1/q;->a:I

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lv1/q;

    .line 24
    .line 25
    :try_start_0
    new-instance v2, Lv1/r;

    .line 26
    .line 27
    invoke-direct {v2, v1}, Lv1/r;-><init>(Lv1/q;)V
    :try_end_0
    .catch Lv1/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catch_0
    const/4 v2, 0x0

    .line 32
    :goto_1
    iput-object v2, p0, La2/g1;->c:Ljava/lang/Object;

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 10

    .line 1
    iget v0, p0, La2/g1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    iget-object v1, p0, La2/g1;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Landroid/widget/EditText;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    const/4 v2, 0x1

    .line 20
    const-string v3, "0,0,"

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    const-string v5, ","

    .line 24
    .line 25
    iget-object v6, p0, La2/g1;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v6, Landroid/graphics/Point;

    .line 28
    .line 29
    if-ne p1, v2, :cond_1

    .line 30
    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget v0, v6, Landroid/graphics/Point;->x:I

    .line 37
    .line 38
    div-int/2addr v0, v4

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_1
    const-string v2, ",0,"

    .line 60
    .line 61
    if-ne p1, v4, :cond_2

    .line 62
    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    iget v0, v6, Landroid/graphics/Point;->x:I

    .line 69
    .line 70
    div-int/2addr v0, v4

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget v0, v6, Landroid/graphics/Point;->x:I

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_0

    .line 98
    .line 99
    :cond_2
    const/4 v7, 0x3

    .line 100
    if-ne p1, v7, :cond_3

    .line 101
    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget v0, v6, Landroid/graphics/Point;->x:I

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 116
    .line 117
    div-int/2addr v0, v4

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_0

    .line 129
    .line 130
    :cond_3
    const/4 v8, 0x4

    .line 131
    const-string v9, "0,"

    .line 132
    .line 133
    if-ne p1, v8, :cond_4

    .line 134
    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 141
    .line 142
    div-int/2addr v0, v4

    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget v0, v6, Landroid/graphics/Point;->x:I

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_4
    const/4 v8, 0x5

    .line 172
    if-ne p1, v8, :cond_5

    .line 173
    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget v0, v6, Landroid/graphics/Point;->x:I

    .line 180
    .line 181
    div-int/2addr v0, v7

    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 189
    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_5
    const/4 v8, 0x6

    .line 203
    if-ne p1, v8, :cond_6

    .line 204
    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    iget v0, v6, Landroid/graphics/Point;->x:I

    .line 211
    .line 212
    div-int/2addr v0, v7

    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    iget v0, v6, Landroid/graphics/Point;->x:I

    .line 220
    .line 221
    div-int/2addr v0, v7

    .line 222
    mul-int/lit8 v0, v0, 0x2

    .line 223
    .line 224
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 231
    .line 232
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :cond_6
    const/4 v8, 0x7

    .line 245
    if-ne p1, v8, :cond_7

    .line 246
    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    iget v0, v6, Landroid/graphics/Point;->x:I

    .line 253
    .line 254
    div-int/2addr v0, v7

    .line 255
    mul-int/lit8 v0, v0, 0x2

    .line 256
    .line 257
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    iget v0, v6, Landroid/graphics/Point;->x:I

    .line 264
    .line 265
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 272
    .line 273
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_0

    .line 284
    .line 285
    :cond_7
    const/16 v8, 0x8

    .line 286
    .line 287
    if-ne p1, v8, :cond_8

    .line 288
    .line 289
    new-instance p1, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    iget v0, v6, Landroid/graphics/Point;->x:I

    .line 295
    .line 296
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 303
    .line 304
    div-int/2addr v0, v7

    .line 305
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    .line 314
    .line 315
    goto/16 :goto_0

    .line 316
    .line 317
    :cond_8
    const/16 v8, 0x9

    .line 318
    .line 319
    if-ne p1, v8, :cond_9

    .line 320
    .line 321
    new-instance p1, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 327
    .line 328
    div-int/2addr v0, v7

    .line 329
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    iget v0, v6, Landroid/graphics/Point;->x:I

    .line 336
    .line 337
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 344
    .line 345
    div-int/2addr v0, v7

    .line 346
    mul-int/lit8 v0, v0, 0x2

    .line 347
    .line 348
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    .line 357
    .line 358
    goto/16 :goto_0

    .line 359
    .line 360
    :cond_9
    const/16 v8, 0xa

    .line 361
    .line 362
    if-ne p1, v8, :cond_a

    .line 363
    .line 364
    new-instance p1, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 370
    .line 371
    div-int/2addr v0, v7

    .line 372
    mul-int/lit8 v0, v0, 0x2

    .line 373
    .line 374
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    iget v0, v6, Landroid/graphics/Point;->x:I

    .line 381
    .line 382
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 389
    .line 390
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    .line 399
    .line 400
    goto/16 :goto_0

    .line 401
    .line 402
    :cond_a
    const/16 v8, 0xb

    .line 403
    .line 404
    if-ne p1, v8, :cond_b

    .line 405
    .line 406
    new-instance p1, Ljava/lang/StringBuilder;

    .line 407
    .line 408
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    iget v0, v6, Landroid/graphics/Point;->x:I

    .line 412
    .line 413
    div-int/2addr v0, v4

    .line 414
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 421
    .line 422
    div-int/2addr v0, v4

    .line 423
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    .line 432
    .line 433
    goto/16 :goto_0

    .line 434
    .line 435
    :cond_b
    const/16 v8, 0xc

    .line 436
    .line 437
    if-ne p1, v8, :cond_c

    .line 438
    .line 439
    new-instance p1, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .line 443
    .line 444
    iget v0, v6, Landroid/graphics/Point;->x:I

    .line 445
    .line 446
    div-int/2addr v0, v4

    .line 447
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    iget v0, v6, Landroid/graphics/Point;->x:I

    .line 454
    .line 455
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 462
    .line 463
    div-int/2addr v0, v4

    .line 464
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object p1

    .line 471
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    .line 473
    .line 474
    goto/16 :goto_0

    .line 475
    .line 476
    :cond_c
    const/16 v8, 0xd

    .line 477
    .line 478
    if-ne p1, v8, :cond_d

    .line 479
    .line 480
    new-instance p1, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 486
    .line 487
    div-int/2addr v0, v4

    .line 488
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    iget v0, v6, Landroid/graphics/Point;->x:I

    .line 495
    .line 496
    div-int/2addr v0, v4

    .line 497
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 504
    .line 505
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object p1

    .line 512
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    .line 514
    .line 515
    goto/16 :goto_0

    .line 516
    .line 517
    :cond_d
    const/16 v8, 0xe

    .line 518
    .line 519
    if-ne p1, v8, :cond_e

    .line 520
    .line 521
    new-instance p1, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    .line 525
    .line 526
    iget v0, v6, Landroid/graphics/Point;->x:I

    .line 527
    .line 528
    div-int/2addr v0, v4

    .line 529
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 536
    .line 537
    div-int/2addr v0, v4

    .line 538
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    iget v0, v6, Landroid/graphics/Point;->x:I

    .line 545
    .line 546
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 553
    .line 554
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object p1

    .line 561
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    .line 563
    .line 564
    goto :goto_0

    .line 565
    :cond_e
    const/16 v8, 0xf

    .line 566
    .line 567
    if-ne p1, v8, :cond_f

    .line 568
    .line 569
    new-instance p1, Ljava/lang/StringBuilder;

    .line 570
    .line 571
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    iget v0, v6, Landroid/graphics/Point;->x:I

    .line 575
    .line 576
    div-int/2addr v0, v7

    .line 577
    mul-int/lit8 v0, v0, 0x2

    .line 578
    .line 579
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 586
    .line 587
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object p1

    .line 594
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    .line 596
    .line 597
    goto :goto_0

    .line 598
    :cond_f
    const/16 v3, 0x10

    .line 599
    .line 600
    if-ne p1, v3, :cond_10

    .line 601
    .line 602
    new-instance p1, Ljava/lang/StringBuilder;

    .line 603
    .line 604
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    .line 606
    .line 607
    iget v0, v6, Landroid/graphics/Point;->x:I

    .line 608
    .line 609
    div-int/2addr v0, v7

    .line 610
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    iget v0, v6, Landroid/graphics/Point;->x:I

    .line 617
    .line 618
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 625
    .line 626
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object p1

    .line 633
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    .line 635
    .line 636
    goto :goto_0

    .line 637
    :cond_10
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    .line 639
    .line 640
    :goto_0
    return-void

    .line 641
    :pswitch_0
    iget-object v0, p0, La2/g1;->c:Ljava/lang/Object;

    .line 642
    .line 643
    check-cast v0, Ljava/util/ArrayList;

    .line 644
    .line 645
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object p1

    .line 649
    check-cast p1, Ljava/lang/CharSequence;

    .line 650
    .line 651
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 652
    .line 653
    check-cast v0, Landroid/widget/EditText;

    .line 654
    .line 655
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    .line 657
    .line 658
    return-void

    .line 659
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public c(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, La2/g1;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Li5/b;

    .line 16
    .line 17
    iget-object v4, v3, La/b;->a:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v4, Ljava/util/ArrayDeque;

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Li5/i;

    .line 26
    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    invoke-virtual {v3}, Li5/b;->t()Li5/i;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    :cond_0
    check-cast v4, Li5/a;

    .line 34
    .line 35
    iput v0, v4, Li5/a;->b:I

    .line 36
    .line 37
    iput v1, v4, Li5/a;->c:I

    .line 38
    .line 39
    iput-object v2, v4, Li5/a;->d:Landroid/graphics/Bitmap$Config;

    .line 40
    .line 41
    iget-object v0, p0, La2/g1;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, La2/g1;

    .line 44
    .line 45
    invoke-virtual {v0, v4, p1}, La2/g1;->W(Li5/i;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public d(ILx1/c;JI)V
    .locals 7

    .line 1
    iget-object v3, p2, Lx1/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 2
    .line 3
    iget-object p2, p0, La2/g1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroid/media/MediaCodec;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    move v1, p1

    .line 10
    move-wide v4, p3

    .line 11
    move v6, p5

    .line 12
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/hierynomus/security/jce/a;->q(Landroid/media/MediaCodec;Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public f(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Li5/b;

    .line 4
    .line 5
    iget-object v1, v0, La/b;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Li5/i;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Li5/b;->t()Li5/i;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_0
    check-cast v1, Li5/a;

    .line 22
    .line 23
    iput p1, v1, Li5/a;->b:I

    .line 24
    .line 25
    iput p2, v1, Li5/a;->c:I

    .line 26
    .line 27
    iput-object p3, v1, Li5/a;->d:Landroid/graphics/Bitmap$Config;

    .line 28
    .line 29
    iget-object p1, p0, La2/g1;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, La2/g1;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, La2/g1;->P(Li5/i;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/graphics/Bitmap;

    .line 38
    .line 39
    return-object p1
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public g(IIJI)V
    .locals 8

    .line 1
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Landroid/media/MediaCodec;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    move v2, p1

    .line 8
    move v4, p2

    .line 9
    move-wide v5, p3

    .line 10
    move v7, p5

    .line 11
    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public h(I)V
    .locals 2

    .line 1
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public i(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, La2/g1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lh5/e0;

    .line 4
    .line 5
    iget-object v1, p0, La2/g1;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ll5/p;

    .line 8
    .line 9
    iget-object v0, v0, Lh5/e0;->f:Ll5/p;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, La2/g1;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lh5/e0;

    .line 18
    .line 19
    iget-object v1, p0, La2/g1;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ll5/p;

    .line 22
    .line 23
    iget-object v2, v0, Lh5/e0;->b:Lh5/j;

    .line 24
    .line 25
    iget-object v0, v0, Lh5/e0;->g:Lh5/e;

    .line 26
    .line 27
    iget-object v1, v1, Ll5/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 28
    .line 29
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/e;->c()Lf5/a;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v0, p1, v1, v3}, Lh5/j;->c(Lf5/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;Lf5/a;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public j(Landroidx/media3/exoplayer/video/l;Landroid/os/Handler;)V
    .locals 2

    .line 1
    new-instance v0, Ld2/d;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, p1, v1}, Ld2/d;-><init>(Ld2/n;Landroidx/media3/exoplayer/video/l;I)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, La2/g1;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Landroid/media/MediaCodec;

    .line 10
    .line 11
    invoke-static {p1, v0, p2}, Ld2/c;->s(Landroid/media/MediaCodec;Ld2/d;Landroid/os/Handler;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public k()Landroid/media/MediaFormat;
    .locals 1

    .line 1
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public l(La2/c0;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, La2/c0;->run()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic m(La1/i;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-static {v0}, Ld2/b;->d(Landroid/media/MediaCodec;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public o(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-static {v0, p1, p2, p3}, Landroidx/fragment/app/o1;->s(Landroid/media/MediaCodec;IJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onProgress(Ljava/lang/Object;JJ)V
    .locals 1

    .line 1
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    .line 2
    .line 3
    const-string p1, "[testMultipartUpload] - "

    .line 4
    .line 5
    const-string v0, " "

    .line 6
    .line 7
    invoke-static {p2, p3, p1, v0}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v0, "\u4e0a\u4f20\u4e2d\uff1a"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 30
    .line 31
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 32
    .line 33
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 34
    .line 35
    long-to-float p2, p2

    .line 36
    const/high16 p3, 0x42c80000    # 100.0f

    .line 37
    .line 38
    mul-float p2, p2, p3

    .line 39
    .line 40
    long-to-float p3, p4

    .line 41
    div-float/2addr p2, p3

    .line 42
    float-to-double p2, p2

    .line 43
    const-string p4, "%"

    .line 44
    .line 45
    invoke-static {v0, p2, p3, p1, p4}, Lta/q;->n(Ljava/text/DecimalFormat;DLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object p2, p0, La2/g1;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p2, Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 52
    .line 53
    iput-object p1, p2, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/16 p3, 0xa

    .line 60
    .line 61
    iput p3, p1, Landroid/os/Message;->what:I

    .line 62
    .line 63
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 64
    .line 65
    iget-object p2, p0, La2/g1;->c:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p2, Lcom/yunpan/appmanage/carsdk/u;

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public p()I
    .locals 3

    .line 1
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public q()V
    .locals 0

    .line 1
    return-void
.end method

.method public r(Lc4/c;)V
    .locals 5

    .line 1
    iget-object v0, p0, La2/g1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Ljava/lang/Object;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_c

    .line 12
    .line 13
    aget-object v3, v0, v2

    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    invoke-interface {p1, v2}, Lc4/c;->y(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    instance-of v4, v3, [B

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    check-cast v3, [B

    .line 28
    .line 29
    invoke-interface {p1, v2, v3}, Lc4/c;->q(I[B)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    instance-of v4, v3, Ljava/lang/Float;

    .line 34
    .line 35
    if-eqz v4, :cond_3

    .line 36
    .line 37
    check-cast v3, Ljava/lang/Number;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    float-to-double v3, v3

    .line 44
    invoke-interface {p1, v2, v3, v4}, Lc4/c;->h(ID)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    instance-of v4, v3, Ljava/lang/Double;

    .line 49
    .line 50
    if-eqz v4, :cond_4

    .line 51
    .line 52
    check-cast v3, Ljava/lang/Number;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    invoke-interface {p1, v2, v3, v4}, Lc4/c;->h(ID)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    instance-of v4, v3, Ljava/lang/Long;

    .line 63
    .line 64
    if-eqz v4, :cond_5

    .line 65
    .line 66
    check-cast v3, Ljava/lang/Number;

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    invoke-interface {p1, v2, v3, v4}, Lc4/c;->m(IJ)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_5
    instance-of v4, v3, Ljava/lang/Integer;

    .line 77
    .line 78
    if-eqz v4, :cond_6

    .line 79
    .line 80
    check-cast v3, Ljava/lang/Number;

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    int-to-long v3, v3

    .line 87
    invoke-interface {p1, v2, v3, v4}, Lc4/c;->m(IJ)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_6
    instance-of v4, v3, Ljava/lang/Short;

    .line 92
    .line 93
    if-eqz v4, :cond_7

    .line 94
    .line 95
    check-cast v3, Ljava/lang/Number;

    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/Number;->shortValue()S

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    int-to-long v3, v3

    .line 102
    invoke-interface {p1, v2, v3, v4}, Lc4/c;->m(IJ)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_7
    instance-of v4, v3, Ljava/lang/Byte;

    .line 107
    .line 108
    if-eqz v4, :cond_8

    .line 109
    .line 110
    check-cast v3, Ljava/lang/Number;

    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    int-to-long v3, v3

    .line 117
    invoke-interface {p1, v2, v3, v4}, Lc4/c;->m(IJ)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_8
    instance-of v4, v3, Ljava/lang/String;

    .line 122
    .line 123
    if-eqz v4, :cond_9

    .line 124
    .line 125
    check-cast v3, Ljava/lang/String;

    .line 126
    .line 127
    invoke-interface {p1, v2, v3}, Lc4/c;->e(ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_9
    instance-of v4, v3, Ljava/lang/Boolean;

    .line 132
    .line 133
    if-eqz v4, :cond_b

    .line 134
    .line 135
    check-cast v3, Ljava/lang/Boolean;

    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_a

    .line 142
    .line 143
    const-wide/16 v3, 0x1

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_a
    const-wide/16 v3, 0x0

    .line 147
    .line 148
    :goto_1
    invoke-interface {p1, v2, v3, v4}, Lc4/c;->m(IJ)V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 154
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v1, "Cannot bind "

    .line 158
    .line 159
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v1, " at index "

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v1, " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String"

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p1

    .line 186
    :cond_c
    :goto_2
    return-void
.end method

.method public removeLast()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, La2/g1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La2/g1;

    .line 4
    .line 5
    invoke-virtual {v0}, La2/g1;->Y()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/graphics/Bitmap;

    .line 10
    .line 11
    return-object v0
.end method

.method public bridge synthetic s(Lba/i;)Ld2/n;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, La2/g1;->N(Lba/i;)Ld2/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public t()V
    .locals 0

    .line 1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, La2/g1;->a:I

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "GroupedLinkedMap( "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, La2/g1;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Li5/e;

    .line 21
    .line 22
    iget-object v2, v1, Li5/e;->c:Li5/e;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    const/16 v4, 0x7b

    .line 33
    .line 34
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v4, v2, Li5/e;->a:Li5/i;

    .line 38
    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/16 v4, 0x3a

    .line 43
    .line 44
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v4, v2, Li5/e;->b:Ljava/util/ArrayList;

    .line 48
    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    const/4 v4, 0x0

    .line 57
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v4, "}, "

    .line 61
    .line 62
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v2, v2, Li5/e;->c:Li5/e;

    .line 66
    .line 67
    const/4 v4, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    if-eqz v4, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    add-int/lit8 v1, v1, -0x2

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    :cond_2
    const-string v1, " )"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    return-object v0

    .line 94
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v1, "AttributeStrategy:\n  "

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, La2/g1;->c:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v1, La2/g1;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    return-object v0

    .line 113
    :sswitch_2
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v0, Ld0/g;

    .line 116
    .line 117
    const-string v1, "[ "

    .line 118
    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    const/4 v0, 0x0

    .line 122
    :goto_2
    const/16 v2, 0x9

    .line 123
    .line 124
    if-ge v0, v2, :cond_3

    .line 125
    .line 126
    invoke-static {v1}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iget-object v2, p0, La2/g1;->b:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v2, Ld0/g;

    .line 133
    .line 134
    iget-object v2, v2, Ld0/g;->h:[F

    .line 135
    .line 136
    aget v2, v2, v0

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v2, " "

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    add-int/lit8 v0, v0, 0x1

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_3
    const-string v0, "] "

    .line 154
    .line 155
    invoke-static {v1, v0}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iget-object v1, p0, La2/g1;->b:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v1, Ld0/g;

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    return-object v0

    .line 171
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public u(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 3

    .line 1
    :cond_0
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x3

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    return v0
.end method

.method public v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public w(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, La2/g1;->R(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p1, p0, La2/g1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lha/v4;

    .line 4
    .line 5
    iget-object p2, p1, Lha/v4;->j:Lx9/y0;

    .line 6
    .line 7
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lx9/x0;

    .line 12
    .line 13
    iget-boolean v0, p2, Lx9/x0;->b:Z

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    xor-int/2addr v0, v1

    .line 17
    iput-boolean v0, p2, Lx9/x0;->b:Z

    .line 18
    .line 19
    iget-object v0, p1, Lha/v4;->j:Lx9/y0;

    .line 20
    .line 21
    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Landroid/content/SharedPreferences;

    .line 27
    .line 28
    if-nez p3, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    const-string v0, "auto_line"

    .line 35
    .line 36
    iget-boolean p2, p2, Lx9/x0;->b:Z

    .line 37
    .line 38
    invoke-interface {p3, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 39
    .line 40
    .line 41
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    .line 43
    .line 44
    iget-object p1, p1, Lha/v4;->g:Lua/d1;

    .line 45
    .line 46
    invoke-virtual {p1}, Lua/d1;->a()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    if-ne p3, v1, :cond_1

    .line 51
    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    const-string v0, "show_line_number"

    .line 57
    .line 58
    iget-boolean p2, p2, Lx9/x0;->b:Z

    .line 59
    .line 60
    invoke-interface {p3, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 61
    .line 62
    .line 63
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    .line 65
    .line 66
    iget-object p1, p1, Lha/v4;->g:Lua/d1;

    .line 67
    .line 68
    invoke-virtual {p1}, Lua/d1;->a()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v1, 0x2

    .line 73
    if-ne p3, v1, :cond_2

    .line 74
    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    const-string v0, "gesture_scale"

    .line 80
    .line 81
    iget-boolean p2, p2, Lx9/x0;->b:Z

    .line 82
    .line 83
    invoke-interface {p3, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 84
    .line 85
    .line 86
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    .line 88
    .line 89
    iget-object p1, p1, Lha/v4;->g:Lua/d1;

    .line 90
    .line 91
    invoke-virtual {p1}, Lua/d1;->a()V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    const/4 v1, 0x3

    .line 96
    if-ne p3, v1, :cond_3

    .line 97
    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    const-string v0, "highlight_current_line"

    .line 103
    .line 104
    iget-boolean p2, p2, Lx9/x0;->b:Z

    .line 105
    .line 106
    invoke-interface {p3, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 107
    .line 108
    .line 109
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    .line 111
    .line 112
    iget-object p1, p1, Lha/v4;->g:Lua/d1;

    .line 113
    .line 114
    invoke-virtual {p1}, Lua/d1;->a()V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    const/4 v1, 0x4

    .line 119
    if-ne p3, v1, :cond_4

    .line 120
    .line 121
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    const-string v0, "auto_indent"

    .line 126
    .line 127
    iget-boolean p2, p2, Lx9/x0;->b:Z

    .line 128
    .line 129
    invoke-interface {p3, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 130
    .line 131
    .line 132
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    .line 134
    .line 135
    iget-object p1, p1, Lha/v4;->g:Lua/d1;

    .line 136
    .line 137
    invoke-virtual {p1}, Lua/d1;->a()V

    .line 138
    .line 139
    .line 140
    :cond_4
    :goto_0
    return-void
.end method

.method public y(I)V
    .locals 1

    .line 1
    iget-object v0, p0, La2/g1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public z(Landroid/view/View;Lx0/j2;)Lx0/j2;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, La2/g1;->a:I

    .line 8
    .line 9
    packed-switch v3, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static/range {p1 .. p2}, Lx0/b1;->q(Landroid/view/View;Lx0/j2;)Lx0/j2;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, v1, Lx0/j2;->a:Lx0/g2;

    .line 17
    .line 18
    invoke-virtual {v2}, Lx0/g2;->m()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {v1}, Lx0/j2;->b()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget-object v3, v0, La2/g1;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Landroid/graphics/Rect;

    .line 32
    .line 33
    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 34
    .line 35
    invoke-virtual {v1}, Lx0/j2;->d()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 40
    .line 41
    invoke-virtual {v1}, Lx0/j2;->c()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iput v2, v3, Landroid/graphics/Rect;->right:I

    .line 46
    .line 47
    invoke-virtual {v1}, Lx0/j2;->a()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 52
    .line 53
    iget-object v2, v0, La2/g1;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v2, Lk4/g;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const/4 v5, 0x0

    .line 62
    :goto_0
    if-ge v5, v4, :cond_1

    .line 63
    .line 64
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-static {v6, v1}, Lx0/b1;->b(Landroid/view/View;Lx0/j2;)Lx0/j2;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v6}, Lx0/j2;->b()I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    iget v8, v3, Landroid/graphics/Rect;->left:I

    .line 77
    .line 78
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    iput v7, v3, Landroid/graphics/Rect;->left:I

    .line 83
    .line 84
    invoke-virtual {v6}, Lx0/j2;->d()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    iget v8, v3, Landroid/graphics/Rect;->top:I

    .line 89
    .line 90
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    iput v7, v3, Landroid/graphics/Rect;->top:I

    .line 95
    .line 96
    invoke-virtual {v6}, Lx0/j2;->c()I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    iget v8, v3, Landroid/graphics/Rect;->right:I

    .line 101
    .line 102
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    iput v7, v3, Landroid/graphics/Rect;->right:I

    .line 107
    .line 108
    invoke-virtual {v6}, Lx0/j2;->a()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    .line 113
    .line 114
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 119
    .line 120
    add-int/lit8 v5, v5, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_1
    iget v2, v3, Landroid/graphics/Rect;->left:I

    .line 124
    .line 125
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 126
    .line 127
    iget v5, v3, Landroid/graphics/Rect;->right:I

    .line 128
    .line 129
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 130
    .line 131
    invoke-virtual {v1, v2, v4, v5, v3}, Lx0/j2;->f(IIII)Lx0/j2;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    :goto_1
    return-object v1

    .line 136
    :pswitch_0
    iget-object v3, v0, La2/g1;->c:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v3, Landroidx/media3/exoplayer/video/k;

    .line 139
    .line 140
    iget v4, v3, Landroidx/media3/exoplayer/video/k;->a:I

    .line 141
    .line 142
    iget-object v5, v0, La2/g1;->b:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v5, Lh5/d0;

    .line 145
    .line 146
    iget-object v6, v2, Lx0/j2;->a:Lx0/g2;

    .line 147
    .line 148
    const/4 v7, 0x7

    .line 149
    invoke-virtual {v6, v7}, Lx0/g2;->f(I)Lp0/c;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    const/16 v8, 0x20

    .line 154
    .line 155
    invoke-virtual {v6, v8}, Lx0/g2;->f(I)Lp0/c;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    iget v8, v7, Lp0/c;->b:I

    .line 160
    .line 161
    iget-object v9, v5, Lh5/d0;->b:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 164
    .line 165
    iput v8, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:I

    .line 166
    .line 167
    invoke-static/range {p1 .. p1}, Lg7/l;->f(Landroid/view/View;)Z

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingBottom()I

    .line 172
    .line 173
    .line 174
    move-result v10

    .line 175
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    .line 176
    .line 177
    .line 178
    move-result v11

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    .line 180
    .line 181
    .line 182
    move-result v12

    .line 183
    iget-boolean v13, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Z

    .line 184
    .line 185
    if-eqz v13, :cond_2

    .line 186
    .line 187
    invoke-virtual/range {p2 .. p2}, Lx0/j2;->a()I

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    iput v10, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:I

    .line 192
    .line 193
    iget v14, v3, Landroidx/media3/exoplayer/video/k;->c:I

    .line 194
    .line 195
    add-int/2addr v10, v14

    .line 196
    :cond_2
    iget v3, v3, Landroidx/media3/exoplayer/video/k;->b:I

    .line 197
    .line 198
    iget-boolean v14, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:Z

    .line 199
    .line 200
    iget v15, v7, Lp0/c;->a:I

    .line 201
    .line 202
    if-eqz v14, :cond_4

    .line 203
    .line 204
    if-eqz v8, :cond_3

    .line 205
    .line 206
    move v11, v3

    .line 207
    goto :goto_2

    .line 208
    :cond_3
    move v11, v4

    .line 209
    :goto_2
    add-int/2addr v11, v15

    .line 210
    :cond_4
    iget-boolean v14, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    .line 211
    .line 212
    iget v0, v7, Lp0/c;->c:I

    .line 213
    .line 214
    if-eqz v14, :cond_6

    .line 215
    .line 216
    if-eqz v8, :cond_5

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_5
    move v4, v3

    .line 220
    :goto_3
    add-int v12, v4, v0

    .line 221
    .line 222
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 227
    .line 228
    iget-boolean v4, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:Z

    .line 229
    .line 230
    const/4 v8, 0x1

    .line 231
    if-eqz v4, :cond_7

    .line 232
    .line 233
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 234
    .line 235
    if-eq v4, v15, :cond_7

    .line 236
    .line 237
    iput v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 238
    .line 239
    const/4 v4, 0x1

    .line 240
    goto :goto_4

    .line 241
    :cond_7
    const/4 v4, 0x0

    .line 242
    :goto_4
    iget-boolean v14, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:Z

    .line 243
    .line 244
    if-eqz v14, :cond_8

    .line 245
    .line 246
    iget v14, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 247
    .line 248
    if-eq v14, v0, :cond_8

    .line 249
    .line 250
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 251
    .line 252
    const/4 v4, 0x1

    .line 253
    :cond_8
    iget-boolean v0, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    .line 254
    .line 255
    if-eqz v0, :cond_9

    .line 256
    .line 257
    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 258
    .line 259
    iget v7, v7, Lp0/c;->b:I

    .line 260
    .line 261
    if-eq v0, v7, :cond_9

    .line 262
    .line 263
    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_9
    move v8, v4

    .line 267
    :goto_5
    if-eqz v8, :cond_a

    .line 268
    .line 269
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    .line 271
    .line 272
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    invoke-virtual {v1, v11, v0, v12, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 277
    .line 278
    .line 279
    iget-boolean v0, v5, Lh5/d0;->a:Z

    .line 280
    .line 281
    if-eqz v0, :cond_b

    .line 282
    .line 283
    iget v1, v6, Lp0/c;->d:I

    .line 284
    .line 285
    iput v1, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:I

    .line 286
    .line 287
    :cond_b
    if-nez v13, :cond_c

    .line 288
    .line 289
    if-eqz v0, :cond_d

    .line 290
    .line 291
    :cond_c
    invoke-virtual {v9}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I()V

    .line 292
    .line 293
    .line 294
    :cond_d
    return-object v2

    .line 295
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

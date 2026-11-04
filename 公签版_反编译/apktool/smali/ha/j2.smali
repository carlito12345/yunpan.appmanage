.class public Lha/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;
.implements Li3/h;
.implements Lb6/a;
.implements Ll2/q;
.implements Ll5/r;
.implements Lvc/g;
.implements Lo5/d0;
.implements Lp0/m;
.implements Landroidx/lifecycle/u0;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lha/j2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;)V
    .locals 3

    const/16 v0, 0x1a

    iput v0, p0, Lha/j2;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const v1, 0x3dcccccd    # 0.1f

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 4
    iput v1, p1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->e:F

    const v1, 0x3f19999a    # 0.6f

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 6
    iput v0, p1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:F

    const/4 v0, 0x0

    .line 7
    iput v0, p1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:I

    return-void
.end method

.method private final A()V
    .locals 0

    .line 1
    return-void
.end method

.method private final B()V
    .locals 0

    .line 1
    return-void
.end method

.method private final E()V
    .locals 0

    .line 1
    return-void
.end method

.method private final F()V
    .locals 0

    .line 1
    return-void
.end method

.method private final G()V
    .locals 0

    .line 1
    return-void
.end method

.method private final H()V
    .locals 0

    .line 1
    return-void
.end method

.method private final I()V
    .locals 0

    .line 1
    return-void
.end method

.method private final J()V
    .locals 0

    .line 1
    return-void
.end method

.method private final K()V
    .locals 0

    .line 1
    return-void
.end method

.method private final L()V
    .locals 0

    .line 1
    return-void
.end method

.method private final M()V
    .locals 0

    .line 1
    return-void
.end method

.method private final N()V
    .locals 0

    .line 1
    return-void
.end method

.method public static h(Ljava/util/logging/Level;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/logging/Level;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x320

    .line 6
    .line 7
    if-ge p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x1f4

    .line 10
    .line 11
    if-ge p0, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x2

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x3

    .line 16
    return p0

    .line 17
    :cond_1
    const/16 v0, 0x384

    .line 18
    .line 19
    if-ge p0, v0, :cond_2

    .line 20
    .line 21
    const/4 p0, 0x4

    .line 22
    return p0

    .line 23
    :cond_2
    const/16 v0, 0x3e8

    .line 24
    .line 25
    if-ge p0, v0, :cond_3

    .line 26
    .line 27
    const/4 p0, 0x5

    .line 28
    return p0

    .line 29
    :cond_3
    const/4 p0, 0x6

    .line 30
    return p0
.end method

.method private final n()V
    .locals 0

    .line 1
    return-void
.end method

.method private final p()V
    .locals 0

    .line 1
    return-void
.end method

.method private final r()V
    .locals 0

    .line 1
    return-void
.end method

.method private final y()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public C(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p2, Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    move-object v0, p1

    .line 16
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public D()V
    .locals 1

    .line 1
    iget v0, p0, Lha/j2;->a:I

    return-void
.end method

.method public O(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Ljava/lang/Class;)Landroidx/lifecycle/r0;
    .locals 0

    .line 1
    new-instance p1, Lq1/b;

    .line 2
    .line 3
    invoke-direct {p1}, Lq1/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public c(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 0

    .line 1
    return-object p1
.end method

.method public create()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lj5/i;

    .line 2
    .line 3
    const-string v1, "SHA-256"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lj5/i;-><init>(Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    new-instance v1, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw v1
.end method

.method public d(I)I
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x6

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x3

    .line 7
    :goto_0
    return p1
.end method

.method public e(Ljava/lang/Class;Lp1/c;)Landroidx/lifecycle/r0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lha/j2;->b(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public f(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lha/j2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lha/j2;->h(Ljava/util/logging/Level;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const-string v0, "EventBus"

    .line 15
    .line 16
    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :pswitch_0
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public g(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget v0, p0, Lha/j2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lha/j2;->h(Ljava/util/logging/Level;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const-string v0, "\n"

    .line 15
    .line 16
    invoke-static {p2, v0}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const-string p3, "EventBus"

    .line 32
    .line 33
    invoke-static {p1, p3, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :pswitch_0
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public i(II[B)I
    .locals 3

    .line 1
    invoke-static {p1, p3}, Lrd/a;->b(I[B)I

    .line 2
    .line 3
    .line 4
    add-int/lit8 v0, p1, 0x4

    .line 5
    .line 6
    invoke-static {v0, p3}, Lrd/a;->b(I[B)I

    .line 7
    .line 8
    .line 9
    add-int/lit8 v0, p1, 0x8

    .line 10
    .line 11
    invoke-static {v0, p3}, Lrd/a;->b(I[B)I

    .line 12
    .line 13
    .line 14
    add-int/lit8 v0, p1, 0xc

    .line 15
    .line 16
    invoke-static {v0, p3}, Lrd/a;->b(I[B)I

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, p1, 0x10

    .line 20
    .line 21
    add-int/lit8 p2, p2, -0x10

    .line 22
    .line 23
    new-array v1, p2, [B

    .line 24
    .line 25
    if-lez p2, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-static {p3, v0, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    :cond_0
    sub-int/2addr v0, p1

    .line 32
    return v0
.end method

.method public j(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    .line 1
    return-object p1
.end method

.method public k(Lr1/p;)Li3/j;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "This SubtitleParser.Factory doesn\'t support any formats."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public l(Ll5/w;)Ll5/q;
    .locals 3

    .line 1
    new-instance v0, Ll5/z;

    .line 2
    .line 3
    const-class v1, Ll5/g;

    .line 4
    .line 5
    const-class v2, Ljava/io/InputStream;

    .line 6
    .line 7
    invoke-virtual {p1, v1, v2}, Ll5/w;->c(Ljava/lang/Class;Ljava/lang/Class;)Ll5/q;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, p1, v1}, Ll5/z;-><init>(Ll5/q;I)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public m(Lr1/p;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public o(Landroid/media/MediaExtractor;Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p2, Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    move-object v0, p1

    .line 16
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public s(Ll2/c0;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public t()V
    .locals 1

    .line 1
    iget v0, p0, Lha/j2;->a:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lha/j2;->a:I

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
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :sswitch_1
    const-string v0, "EmptyConsumer"

    .line 14
    .line 15
    return-object v0

    .line 16
    nop

    .line 17
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method public u(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lo0/g;

    .line 2
    .line 3
    iget p1, p1, Lo0/g;->b:I

    .line 4
    .line 5
    return p1
.end method

.method public v(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lo0/g;

    .line 2
    .line 3
    iget-boolean p1, p1, Lo0/g;->c:Z

    .line 4
    .line 5
    return p1
.end method

.method public x(Lr1/p;)I
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public z(II)Ll2/j0;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

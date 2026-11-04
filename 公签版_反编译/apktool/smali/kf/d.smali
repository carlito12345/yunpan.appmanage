.class public Lkf/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf5/l;
.implements Lo5/o;
.implements Li3/j;
.implements Ll2/i;
.implements Ls3/y;
.implements Ltf/d;
.implements Lha/wd;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lkf/d;->a:I

    sparse-switch p1, :sswitch_data_0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lkf/d;->c:Ljava/lang/Object;

    return-void

    .line 8
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance p1, Lu1/q;

    invoke-direct {p1}, Lu1/q;-><init>()V

    iput-object p1, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 10
    new-instance p1, Lr3/a;

    invoke-direct {p1}, Lr3/a;-><init>()V

    iput-object p1, p0, Lkf/d;->c:Ljava/lang/Object;

    return-void

    .line 11
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lkf/d;->b:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lkf/d;->a:I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, Lkf/d;->b:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 63
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lkf/d;->c:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lkf/d;->a:I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    filled-new-array {p1, p2, p3}, [I

    move-result-object p1

    iput-object p1, p0, Lkf/d;->b:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 66
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lkf/d;->c:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lkf/d;->a:I

    iput-object p2, p0, Lkf/d;->c:Ljava/lang/Object;

    iput-object p3, p0, Lkf/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 2
    iput p1, p0, Lkf/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 3
    iput p2, p0, Lkf/d;->a:I

    iput-object p1, p0, Lkf/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lha/j2;IIII)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, Lkf/d;->a:I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ls4/r;

    invoke-direct {v0, p1, p2, p4, p5}, Ls4/r;-><init>(Lha/j2;III)V

    iput-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lkf/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lha/jd;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lkf/d;->a:I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 73
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lkf/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V
    .locals 1

    const/16 v0, 0x13

    iput v0, p0, Lkf/d;->a:I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "Cannot setup KeyEvent with null editor instance."

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 47
    new-instance v0, Lqb/a;

    invoke-direct {v0, p1}, Lqb/a;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    iput-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 4
    iput p2, p0, Lkf/d;->a:I

    iput-object p1, p0, Lkf/d;->b:Ljava/lang/Object;

    iput-object p3, p0, Lkf/d;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x4

    iput v0, p0, Lkf/d;->a:I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 57
    new-array v1, v0, [I

    iput-object v1, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 58
    new-array v1, v0, [F

    iput-object v1, p0, Lkf/d;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 59
    iget-object v2, p0, Lkf/d;->b:Ljava/lang/Object;

    check-cast v2, [I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 60
    iget-object v2, p0, Lkf/d;->c:Ljava/lang/Object;

    check-cast v2, [F

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x5

    iput v1, p0, Lkf/d;->a:I

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 34
    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v3

    .line 35
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 36
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 37
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v3

    .line 38
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result p1

    sub-int v1, p1, v3

    add-int/2addr v1, v0

    .line 39
    new-array v1, v1, [Ljava/lang/String;

    move v4, v3

    :goto_0
    if-gt v4, p1, :cond_0

    sub-int v5, v4, v3

    .line 40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v6, v7, v2

    const-string v6, "%02d"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    add-int/2addr v4, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 2

    const/16 v0, 0x8

    iput v0, p0, Lkf/d;->a:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 15
    new-instance p1, Lah/a;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lah/a;-><init>(I)V

    new-instance v0, Loh/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Loh/b;-><init>(Ljava/util/function/Supplier;I)V

    iput-object v0, p0, Lkf/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ls3/b0;)V
    .locals 2

    const/16 v0, 0xf

    iput v0, p0, Lkf/d;->a:I

    .line 67
    iput-object p1, p0, Lkf/d;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance p1, Lj3/f;

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 69
    invoke-direct {p1, v1, v0}, Lj3/f;-><init>([BI)V

    .line 70
    iput-object p1, p0, Lkf/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lu1/d0;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lkf/d;->a:I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 50
    new-instance p1, Lu1/q;

    invoke-direct {p1}, Lu1/q;-><init>()V

    iput-object p1, p0, Lkf/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lu4/f;Lb5/b;)V
    .locals 1

    const/16 v0, 0x18

    iput v0, p0, Lkf/d;->a:I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 52
    iput-object p1, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 53
    iput-object p2, p0, Lkf/d;->c:Ljava/lang/Object;

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "file == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([CJZ)V
    .locals 9

    const/16 v0, 0x14

    iput v0, p0, Lkf/d;->a:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lvf/b;

    invoke-direct {v0}, Lvf/b;-><init>()V

    iput-object v0, p0, Lkf/d;->b:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 18
    array-length v1, p1

    if-lez v1, :cond_1

    .line 19
    invoke-virtual {v0, p1, p4}, Lvf/b;->b([CZ)V

    const/16 v1, 0xc

    .line 20
    new-array v2, v1, [B

    .line 21
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    const/16 v6, 0x100

    .line 22
    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-byte v6, v6

    .line 23
    iget-object v7, p0, Lkf/d;->b:Ljava/lang/Object;

    check-cast v7, Lvf/b;

    invoke-virtual {v7}, Lvf/b;->a()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    xor-int/2addr v8, v6

    int-to-byte v8, v8

    .line 24
    invoke-virtual {v7, v6}, Lvf/b;->c(B)V

    .line 25
    aput-byte v8, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 26
    :cond_0
    iput-object v2, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 27
    invoke-virtual {v0, p1, p4}, Lvf/b;->b([CZ)V

    .line 28
    iget-object p1, p0, Lkf/d;->c:Ljava/lang/Object;

    check-cast p1, [B

    const/16 p4, 0x18

    ushr-long v0, p2, p4

    long-to-int p4, v0

    int-to-byte p4, p4

    const/16 v0, 0xb

    aput-byte p4, p1, v0

    const/16 p4, 0x10

    ushr-long/2addr p2, p4

    long-to-int p3, p2

    int-to-byte p2, p3

    const/16 p3, 0xa

    .line 29
    aput-byte p2, p1, p3

    .line 30
    array-length p2, p1

    invoke-virtual {p0, v4, p2, p1}, Lkf/d;->d(II[B)I

    return-void

    .line 31
    :cond_1
    new-instance p1, Lwf/a;

    const-string p2, "input password is null or empty, cannot initialize standard encrypter"

    invoke-direct {p1, p2}, Lwf/a;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
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

.method private final synthetic O()V
    .locals 0

    .line 1
    return-void
.end method

.method public static P(Lio/github/rosemoe/sora/widget/CodeEditor;Lmb/j;Lmb/g;Ldb/i;Ldb/t;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lmb/j;->d:Lmb/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lmb/b;->a()Lmb/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget p1, p1, Lmb/b;->b:I

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Lmb/g;->o(I)Lmb/h;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget p2, p2, Lmb/h;->c:I

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lio/github/rosemoe/sora/widget/CodeEditor;->g0(II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineSeparator()Lmb/m;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p1, p1, Lmb/m;->a:Ljava/lang/String;

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    invoke-virtual {p0, p1, p2, p2}, Lio/github/rosemoe/sora/widget/CodeEditor;->u(Ljava/lang/CharSequence;ZZ)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->E()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p4, p2}, Ldb/i;->c(Z)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p3, p2}, Ldb/i;->c(Z)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p2, 0x0

    .line 45
    :cond_1
    :goto_0
    return p2
.end method

.method public static j(Lkf/d;ZZ)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    :try_start_0
    iget-object v2, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v2, Landroid/os/PowerManager$WakeLock;

    .line 9
    .line 10
    if-nez v2, :cond_2

    .line 11
    .line 12
    iget-object v2, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v2}, Lr8/a;->a(Landroid/content/Context;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    const-string p1, "WAKE_LOCK permission not granted, can\'t acquire wake lock for playback"

    .line 23
    .line 24
    invoke-static {p1}, Lu1/a;->p(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    :try_start_1
    iget-object v2, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Landroid/content/Context;

    .line 34
    .line 35
    const-string v3, "power"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/os/PowerManager;

    .line 42
    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    const-string p1, "PowerManager is null, therefore not creating the WakeLock."

    .line 46
    .line 47
    invoke-static {p1}, Lu1/a;->p(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    monitor-exit p0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :try_start_2
    const-string v3, "ExoPlayer:WakeLockManager"

    .line 53
    .line 54
    invoke-virtual {v2, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iput-object v2, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object v2, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Landroid/os/PowerManager$WakeLock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .line 67
    if-nez v2, :cond_3

    .line 68
    .line 69
    monitor-exit p0

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    if-eqz p1, :cond_4

    .line 72
    .line 73
    if-eqz p2, :cond_4

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    :cond_4
    if-eqz v0, :cond_5

    .line 77
    .line 78
    :try_start_3
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    .line 84
    .line 85
    :goto_0
    monitor-exit p0

    .line 86
    :goto_1
    return-void

    .line 87
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    throw p1
.end method

.method public static k(Lu4/f;Lx4/a;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lx4/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lx4/c;

    .line 6
    .line 7
    iget-object p1, p1, Lx4/c;->a:Lx4/b;

    .line 8
    .line 9
    iget-object v0, p1, Lb5/c;->b:[Ljava/lang/Object;

    .line 10
    .line 11
    array-length v0, v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lx4/a;

    .line 20
    .line 21
    invoke-static {p0, v2}, Lkf/d;->k(Lu4/f;Lx4/a;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0, p1}, Lu4/f;->a(Lx4/a;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public static q(Lx4/a;)I
    .locals 1

    .line 1
    instance-of v0, p0, Lx4/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    instance-of v0, p0, Lx4/s;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x2

    .line 12
    return p0

    .line 13
    :cond_1
    instance-of v0, p0, Lx4/f;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    const/4 p0, 0x3

    .line 18
    return p0

    .line 19
    :cond_2
    instance-of v0, p0, Lx4/j;

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    const/4 p0, 0x4

    .line 24
    return p0

    .line 25
    :cond_3
    instance-of v0, p0, Lx4/o;

    .line 26
    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    const/4 p0, 0x6

    .line 30
    return p0

    .line 31
    :cond_4
    instance-of v0, p0, Lx4/i;

    .line 32
    .line 33
    if-eqz v0, :cond_5

    .line 34
    .line 35
    const/16 p0, 0x10

    .line 36
    .line 37
    return p0

    .line 38
    :cond_5
    instance-of v0, p0, Lx4/g;

    .line 39
    .line 40
    if-eqz v0, :cond_6

    .line 41
    .line 42
    const/16 p0, 0x11

    .line 43
    .line 44
    return p0

    .line 45
    :cond_6
    instance-of v0, p0, Lx4/t;

    .line 46
    .line 47
    if-eqz v0, :cond_7

    .line 48
    .line 49
    const/16 p0, 0x17

    .line 50
    .line 51
    return p0

    .line 52
    :cond_7
    instance-of v0, p0, Lx4/u;

    .line 53
    .line 54
    if-eqz v0, :cond_8

    .line 55
    .line 56
    const/16 p0, 0x18

    .line 57
    .line 58
    return p0

    .line 59
    :cond_8
    instance-of v0, p0, Lx4/h;

    .line 60
    .line 61
    if-eqz v0, :cond_9

    .line 62
    .line 63
    const/16 p0, 0x19

    .line 64
    .line 65
    return p0

    .line 66
    :cond_9
    instance-of v0, p0, Lx4/q;

    .line 67
    .line 68
    if-eqz v0, :cond_a

    .line 69
    .line 70
    const/16 p0, 0x1a

    .line 71
    .line 72
    return p0

    .line 73
    :cond_a
    instance-of v0, p0, Lx4/c;

    .line 74
    .line 75
    if-eqz v0, :cond_b

    .line 76
    .line 77
    const/16 p0, 0x1c

    .line 78
    .line 79
    return p0

    .line 80
    :cond_b
    instance-of v0, p0, Lx4/k;

    .line 81
    .line 82
    if-eqz v0, :cond_c

    .line 83
    .line 84
    const/16 p0, 0x1e

    .line 85
    .line 86
    return p0

    .line 87
    :cond_c
    instance-of p0, p0, Lx4/d;

    .line 88
    .line 89
    if-eqz p0, :cond_d

    .line 90
    .line 91
    const/16 p0, 0x1f

    .line 92
    .line 93
    return p0

    .line 94
    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    .line 95
    .line 96
    const-string v0, "Shouldn\'t happen"

    .line 97
    .line 98
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p0
.end method

.method public static u(Landroid/graphics/ImageDecoder$Source;IILf5/i;)Lo5/a0;
    .locals 1

    .line 1
    new-instance v0, Ln5/c;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Ln5/c;-><init>(IILf5/i;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lo5/g;->g(Landroid/graphics/ImageDecoder$Source;Ln5/c;)Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lo5/g;->t(Landroid/graphics/drawable/Drawable;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    new-instance p1, Lo5/a0;

    .line 17
    .line 18
    invoke-static {p0}, Lo5/g;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 p2, 0x2

    .line 23
    invoke-direct {p1, p2, p0}, Lo5/a0;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 28
    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string p3, "Received unexpected drawable type for animated image, failing: "

    .line 32
    .line 33
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method


# virtual methods
.method public A()Ljava/util/ArrayDeque;
    .locals 3

    .line 1
    iget-object v0, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Loh/b;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/util/ArrayDeque;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayDeque;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v2, Ljava/lang/ref/SoftReference;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-object v1
.end method

.method public B(Lq4/j;)Lq4/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lq4/e;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lq4/e;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lq4/e;-><init>(Lq4/j;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v1
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public D()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lkf/d;->a:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lua/q8;

    .line 11
    .line 12
    iput-boolean v0, v1, Lua/q8;->V:Z

    .line 13
    .line 14
    iget-object v2, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lx9/w3;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lua/q8;->F(Lx9/w3;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object v4, v1, Lua/q8;->l:Lx9/g0;

    .line 30
    .line 31
    invoke-virtual {v4, v3}, Lc6/g;->E(Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2, v0}, Lua/q8;->v(Lx9/w3;Z)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    iget-object v0, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Ljava/lang/String;

    .line 41
    .line 42
    iget-object v2, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;

    .line 45
    .line 46
    invoke-static {v2, v0, v1}, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->x(Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_1
    iget-object v2, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 53
    .line 54
    iget-boolean v3, v2, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 55
    .line 56
    const-string v4, "\u64cd\u4f5c\u6210\u529f"

    .line 57
    .line 58
    iget-object v5, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v5, Lcom/yunpan/appmanage/ui/ActivityJiliE02;

    .line 61
    .line 62
    if-eqz v3, :cond_0

    .line 63
    .line 64
    :try_start_0
    sget v3, Lcom/yunpan/appmanage/ui/ActivityJiliE02;->E:I

    .line 65
    .line 66
    iget-object v3, v5, Lda/g;->A:Lda/g;

    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    iget-object v2, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v3, v2, v1, v0}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 75
    .line 76
    .line 77
    invoke-static {v4, v1}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    iget-boolean v3, v2, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 82
    .line 83
    if-eqz v3, :cond_1

    .line 84
    .line 85
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 86
    .line 87
    iget-object v2, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 88
    .line 89
    xor-int/2addr v1, v3

    .line 90
    new-instance v3, Lua/v0;

    .line 91
    .line 92
    const/16 v4, 0xb

    .line 93
    .line 94
    invoke-direct {v3, v4}, Lua/v0;-><init>(I)V

    .line 95
    .line 96
    .line 97
    iput-object v3, v0, La2/w0;->c:Ljava/lang/Object;

    .line 98
    .line 99
    sget-object v3, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 100
    .line 101
    new-instance v4, Lfa/s;

    .line 102
    .line 103
    const/4 v5, 0x3

    .line 104
    invoke-direct {v4, v0, v2, v1, v5}, Lfa/s;-><init>(La2/w0;Ljava/lang/String;ZI)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    iget-boolean v3, v2, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 112
    .line 113
    if-eqz v3, :cond_2

    .line 114
    .line 115
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 116
    .line 117
    iget-object v1, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 118
    .line 119
    new-instance v2, Lua/v0;

    .line 120
    .line 121
    const/16 v3, 0xc

    .line 122
    .line 123
    invoke-direct {v2, v3}, Lua/v0;-><init>(I)V

    .line 124
    .line 125
    .line 126
    iput-object v2, v0, La2/w0;->c:Ljava/lang/Object;

    .line 127
    .line 128
    sget-object v2, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 129
    .line 130
    new-instance v3, Lfa/u;

    .line 131
    .line 132
    const/4 v4, 0x5

    .line 133
    invoke-direct {v3, v0, v1, v4}, Lfa/u;-><init>(La2/w0;Ljava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_2
    :try_start_1
    sget v3, Lcom/yunpan/appmanage/ui/ActivityJiliE02;->E:I

    .line 141
    .line 142
    iget-object v3, v5, Lda/g;->A:Lda/g;

    .line 143
    .line 144
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    iget-object v2, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 149
    .line 150
    const/4 v5, 0x2

    .line 151
    invoke-virtual {v3, v2, v5, v0}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 152
    .line 153
    .line 154
    invoke-static {v4, v1}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    .line 156
    .line 157
    :catch_0
    :goto_0
    return-void

    .line 158
    :pswitch_2
    iget-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v0, Lha/s2;

    .line 161
    .line 162
    iget-object v0, v0, Lha/s2;->d:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityDesktop;

    .line 165
    .line 166
    sget v1, Lcom/yunpan/appmanage/ui/ActivityDesktop;->G:I

    .line 167
    .line 168
    iget-object v0, v0, Lda/g;->A:Lda/g;

    .line 169
    .line 170
    iget-object v1, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 173
    .line 174
    invoke-static {v0, v0, v1}, Lif/a;->E0(Landroid/app/Activity;Landroid/content/Context;Lcom/yunpan/appmanage/db/AppBean;)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :pswitch_3
    iget-object v0, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v0, Ljava/lang/String;

    .line 181
    .line 182
    if-eqz v0, :cond_3

    .line 183
    .line 184
    const-string v2, "5555"

    .line 185
    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_3

    .line 191
    .line 192
    const-string v0, "\u5df2\u5f00\u542f\uff0c\u8bf7\u52ff\u91cd\u590d\u5f00\u542f"

    .line 193
    .line 194
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_3
    iget-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 201
    .line 202
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/ui/ActivityAdb;->D(Lcom/yunpan/appmanage/ui/ActivityAdb;Z)V

    .line 203
    .line 204
    .line 205
    :goto_1
    return-void

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public E(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lqb/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lqb/a;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lqb/a;->a()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    return v2

    .line 25
    :cond_0
    const/16 p2, 0x1d

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    if-lt p1, p2, :cond_1

    .line 29
    .line 30
    const/16 p2, 0x36

    .line 31
    .line 32
    if-gt p1, p2, :cond_1

    .line 33
    .line 34
    return v0

    .line 35
    :cond_1
    const/16 p2, 0x42

    .line 36
    .line 37
    if-eq p1, p2, :cond_2

    .line 38
    .line 39
    const/16 p2, 0x13

    .line 40
    .line 41
    if-eq p1, p2, :cond_2

    .line 42
    .line 43
    const/16 p2, 0x14

    .line 44
    .line 45
    if-eq p1, p2, :cond_2

    .line 46
    .line 47
    const/16 p2, 0x15

    .line 48
    .line 49
    if-eq p1, p2, :cond_2

    .line 50
    .line 51
    const/16 p2, 0x16

    .line 52
    .line 53
    if-eq p1, p2, :cond_2

    .line 54
    .line 55
    const/16 p2, 0x7a

    .line 56
    .line 57
    if-eq p1, p2, :cond_2

    .line 58
    .line 59
    const/16 p2, 0x7b

    .line 60
    .line 61
    if-eq p1, p2, :cond_2

    .line 62
    .line 63
    const/16 p2, 0x3e

    .line 64
    .line 65
    if-ne p1, p2, :cond_3

    .line 66
    .line 67
    :cond_2
    const/4 v2, 0x1

    .line 68
    :cond_3
    return v2
.end method

.method public F(Lu/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La2/w0;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, La2/w0;->G(Lu/a;)Lu/f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, v0, La2/w0;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Landroid/view/ActionMode$Callback;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Lq/a0;

    .line 19
    .line 20
    iget-object v0, p1, Lq/a0;->y:Landroid/widget/PopupWindow;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p1, Lq/a0;->l:Landroid/view/Window;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p1, Lq/a0;->z:Lq/o;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p1, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p1, Lq/a0;->A:Lx0/l1;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Lx0/l1;->b()V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p1, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 47
    .line 48
    invoke-static {v0}, Lx0/b1;->a(Landroid/view/View;)Lx0/l1;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Lx0/l1;->a(F)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p1, Lq/a0;->A:Lx0/l1;

    .line 57
    .line 58
    new-instance v1, Lq/q;

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    invoke-direct {v1, v2, p0}, Lq/q;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lx0/l1;->d(Lx0/m1;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    const/4 v0, 0x0

    .line 68
    iput-object v0, p1, Lq/a0;->w:Lu/a;

    .line 69
    .line 70
    iget-object v0, p1, Lq/a0;->C:Landroid/view/ViewGroup;

    .line 71
    .line 72
    invoke-static {v0}, Lx0/b1;->v(Landroid/view/View;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lq/a0;->H()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public J(Lu/a;Lv/k;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lq/a0;

    .line 4
    .line 5
    iget-object v0, v0, Lq/a0;->C:Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-static {v0}, Lx0/b1;->v(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, La2/w0;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, La2/w0;->G(Lu/a;)Lu/f;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v1, v0, La2/w0;->e:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, La0/t;

    .line 21
    .line 22
    invoke-virtual {v1, p2}, La0/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/view/Menu;

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    new-instance v2, Lv/a0;

    .line 31
    .line 32
    iget-object v3, v0, La2/w0;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v3, Landroid/content/Context;

    .line 35
    .line 36
    invoke-direct {v2, v3, p2}, Lv/a0;-><init>(Landroid/content/Context;Lv/k;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p2, v2}, La0/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object p2, v0, La2/w0;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p2, Landroid/view/ActionMode$Callback;

    .line 45
    .line 46
    invoke-interface {p2, p1, v2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    return p1
.end method

.method public K(Lu0/e;)V
    .locals 4

    .line 1
    iget v0, p1, Lu0/e;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v2, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ll5/y;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ly7/b;

    .line 14
    .line 15
    iget-object p1, p1, Lu0/e;->a:Landroid/graphics/Typeface;

    .line 16
    .line 17
    const/16 v3, 0x15

    .line 18
    .line 19
    invoke-direct {v0, v2, v3, p1}, Ly7/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Landroidx/emoji2/text/j;

    .line 27
    .line 28
    const/4 v3, 0x4

    .line 29
    invoke-direct {p1, v0, v3, v2}, Landroidx/emoji2/text/j;-><init>(IILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public declared-synchronized L()Lkh/i;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Lkh/i;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, v0, Lkh/i;->c:Lkh/i;

    .line 9
    .line 10
    iput-object v1, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lkf/d;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit p0

    .line 21
    return-object v0

    .line 22
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v0
.end method

.method public declared-synchronized M()Lkh/i;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Lkh/i;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x3e8

    .line 9
    .line 10
    int-to-long v0, v0

    .line 11
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkf/d;->L()Lkh/i;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    .line 22
    return-object v0

    .line 23
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw v0
.end method

.method public N(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkf/d;->A()Ljava/util/ArrayDeque;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0xc

    .line 10
    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public Q(ZZ)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/net/wifi/WifiManager$WifiLock;

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0}, Lr8/a;->a(Landroid/content/Context;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-string p1, "WAKE_LOCK permission not granted, can\'t acquire wake lock for playback"

    .line 20
    .line 21
    invoke-static {p1}, Lu1/a;->p(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "wifi"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    const-string p1, "WifiManager is null, therefore not creating the WifiLock."

    .line 40
    .line 41
    invoke-static {p1}, Lu1/a;->p(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    const/4 v1, 0x3

    .line 46
    const-string v2, "ExoPlayer:WifiLockManager"

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Landroid/net/wifi/WifiManager$WifiLock;

    .line 61
    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    if-eqz p1, :cond_4

    .line 66
    .line 67
    if-eqz p2, :cond_4

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void
.end method

.method public R()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-static {v0}, Loh/f;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v0, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    iget-object v0, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string v0, ""

    .line 36
    .line 37
    :goto_0
    return-object v0
.end method

.method public S(Lx4/c;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lb5/b;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lb5/b;->d()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p2, 0x0

    .line 17
    :goto_0
    iget-object p1, p1, Lx4/c;->a:Lx4/b;

    .line 18
    .line 19
    iget-object v2, p1, Lb5/c;->b:[Ljava/lang/Object;

    .line 20
    .line 21
    array-length v2, v2

    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-static {v2}, Lqf/c;->f0(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "  size: "

    .line 29
    .line 30
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v0, v3}, Lb5/b;->c(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {v0, v2}, Lb5/b;->m(I)I

    .line 38
    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    :goto_1
    if-ge v3, v2, :cond_9

    .line 42
    .line 43
    invoke-virtual {p1, v3}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Lx4/a;

    .line 48
    .line 49
    const/16 v5, 0x20

    .line 50
    .line 51
    if-eqz p2, :cond_3

    .line 52
    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v7, "  ["

    .line 56
    .line 57
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v7, "] "

    .line 68
    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-static {v4}, Lkf/d;->q(Lx4/a;)I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    const/16 v8, 0x1e

    .line 77
    .line 78
    if-ne v7, v8, :cond_2

    .line 79
    .line 80
    const-string v7, "null"

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Lx4/a;->d()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-interface {v4}, Lb5/h;->a()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v0, v6}, Lb5/b;->c(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    invoke-static {v4}, Lkf/d;->q(Lx4/a;)I

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    const/4 v7, 0x3

    .line 124
    if-eqz v6, :cond_7

    .line 125
    .line 126
    const/4 v8, 0x6

    .line 127
    if-eq v6, v8, :cond_7

    .line 128
    .line 129
    const/4 v8, 0x2

    .line 130
    if-eq v6, v8, :cond_7

    .line 131
    .line 132
    if-eq v6, v7, :cond_6

    .line 133
    .line 134
    const/4 v8, 0x4

    .line 135
    if-eq v6, v8, :cond_7

    .line 136
    .line 137
    const/16 v7, 0x10

    .line 138
    .line 139
    if-eq v6, v7, :cond_5

    .line 140
    .line 141
    const/16 v5, 0x11

    .line 142
    .line 143
    if-eq v6, v5, :cond_4

    .line 144
    .line 145
    iget-object v5, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v5, Lu4/f;

    .line 148
    .line 149
    packed-switch v6, :pswitch_data_0

    .line 150
    .line 151
    .line 152
    new-instance p1, Ljava/lang/RuntimeException;

    .line 153
    .line 154
    const-string p2, "Shouldn\'t happen"

    .line 155
    .line 156
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p1

    .line 160
    :pswitch_0
    check-cast v4, Lx4/d;

    .line 161
    .line 162
    iget v4, v4, Lx4/l;->a:I

    .line 163
    .line 164
    shl-int/lit8 v4, v4, 0x5

    .line 165
    .line 166
    or-int/2addr v4, v6

    .line 167
    invoke-virtual {v0, v4}, Lb5/b;->i(I)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_4

    .line 171
    .line 172
    :pswitch_1
    invoke-virtual {v0, v6}, Lb5/b;->i(I)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_4

    .line 176
    .line 177
    :pswitch_2
    invoke-virtual {v0, v6}, Lb5/b;->i(I)V

    .line 178
    .line 179
    .line 180
    new-instance p1, Ljava/lang/ClassCastException;

    .line 181
    .line 182
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 183
    .line 184
    .line 185
    throw p1

    .line 186
    :pswitch_3
    invoke-virtual {v0, v6}, Lb5/b;->i(I)V

    .line 187
    .line 188
    .line 189
    check-cast v4, Lx4/c;

    .line 190
    .line 191
    invoke-virtual {p0, v4, v1}, Lkf/d;->S(Lx4/c;Z)V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_4

    .line 195
    .line 196
    :pswitch_4
    new-instance p1, Ljava/lang/ClassCastException;

    .line 197
    .line 198
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 199
    .line 200
    .line 201
    throw p1

    .line 202
    :pswitch_5
    iget-object v5, v5, Lu4/f;->i:Lu4/v;

    .line 203
    .line 204
    check-cast v4, Lx4/q;

    .line 205
    .line 206
    invoke-virtual {v5, v4}, Lu4/v;->l(Lx4/q;)I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    int-to-long v4, v4

    .line 211
    invoke-static {v0, v6, v4, v5}, Landroid/support/v4/media/session/b;->M(Lb5/b;IJ)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_4

    .line 215
    .line 216
    :pswitch_6
    iget-object v5, v5, Lu4/f;->h:Lu4/l;

    .line 217
    .line 218
    check-cast v4, Lx4/h;

    .line 219
    .line 220
    invoke-virtual {v5, v4}, Lu4/l;->l(Lx4/h;)I

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    int-to-long v4, v4

    .line 225
    invoke-static {v0, v6, v4, v5}, Landroid/support/v4/media/session/b;->M(Lb5/b;IJ)V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_4

    .line 229
    .line 230
    :pswitch_7
    iget-object v5, v5, Lu4/f;->f:Lu4/z;

    .line 231
    .line 232
    check-cast v4, Lx4/u;

    .line 233
    .line 234
    invoke-virtual {v5, v4}, Lu4/z;->m(Lx4/u;)I

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    int-to-long v4, v4

    .line 239
    invoke-static {v0, v6, v4, v5}, Landroid/support/v4/media/session/b;->M(Lb5/b;IJ)V

    .line 240
    .line 241
    .line 242
    goto :goto_4

    .line 243
    :pswitch_8
    iget-object v5, v5, Lu4/f;->e:Lu4/z;

    .line 244
    .line 245
    check-cast v4, Lx4/t;

    .line 246
    .line 247
    invoke-virtual {v5, v4}, Lu4/z;->l(Lx4/t;)I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    int-to-long v4, v4

    .line 252
    invoke-static {v0, v6, v4, v5}, Landroid/support/v4/media/session/b;->M(Lb5/b;IJ)V

    .line 253
    .line 254
    .line 255
    goto :goto_4

    .line 256
    :pswitch_9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    new-instance p1, Ljava/lang/ClassCastException;

    .line 260
    .line 261
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 262
    .line 263
    .line 264
    throw p1

    .line 265
    :pswitch_a
    iget-object p1, v5, Lu4/f;->g:Lu4/z;

    .line 266
    .line 267
    new-instance p1, Ljava/lang/ClassCastException;

    .line 268
    .line 269
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 270
    .line 271
    .line 272
    throw p1

    .line 273
    :cond_4
    check-cast v4, Lx4/g;

    .line 274
    .line 275
    iget-wide v4, v4, Lx4/m;->a:J

    .line 276
    .line 277
    invoke-static {v0, v6, v4, v5}, Landroid/support/v4/media/session/b;->L(Lb5/b;IJ)V

    .line 278
    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_5
    check-cast v4, Lx4/i;

    .line 282
    .line 283
    iget v4, v4, Lx4/l;->a:I

    .line 284
    .line 285
    int-to-long v7, v4

    .line 286
    shl-long v4, v7, v5

    .line 287
    .line 288
    invoke-static {v0, v6, v4, v5}, Landroid/support/v4/media/session/b;->L(Lb5/b;IJ)V

    .line 289
    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_6
    check-cast v4, Lx4/n;

    .line 293
    .line 294
    invoke-virtual {v4}, Lx4/n;->g()J

    .line 295
    .line 296
    .line 297
    move-result-wide v4

    .line 298
    invoke-static {v0, v6, v4, v5}, Landroid/support/v4/media/session/b;->M(Lb5/b;IJ)V

    .line 299
    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_7
    check-cast v4, Lx4/n;

    .line 303
    .line 304
    invoke-virtual {v4}, Lx4/n;->g()J

    .line 305
    .line 306
    .line 307
    move-result-wide v4

    .line 308
    const/16 v8, 0x3f

    .line 309
    .line 310
    shr-long v8, v4, v8

    .line 311
    .line 312
    xor-long/2addr v8, v4

    .line 313
    invoke-static {v8, v9}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    .line 314
    .line 315
    .line 316
    move-result v8

    .line 317
    rsub-int/lit8 v8, v8, 0x48

    .line 318
    .line 319
    shr-int/lit8 v7, v8, 0x3

    .line 320
    .line 321
    add-int/lit8 v8, v7, -0x1

    .line 322
    .line 323
    shl-int/lit8 v8, v8, 0x5

    .line 324
    .line 325
    or-int/2addr v6, v8

    .line 326
    invoke-virtual {v0, v6}, Lb5/b;->i(I)V

    .line 327
    .line 328
    .line 329
    :goto_3
    if-lez v7, :cond_8

    .line 330
    .line 331
    long-to-int v6, v4

    .line 332
    int-to-byte v6, v6

    .line 333
    invoke-virtual {v0, v6}, Lb5/b;->i(I)V

    .line 334
    .line 335
    .line 336
    const/16 v6, 0x8

    .line 337
    .line 338
    shr-long/2addr v4, v6

    .line 339
    add-int/lit8 v7, v7, -0x1

    .line 340
    .line 341
    goto :goto_3

    .line 342
    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 343
    .line 344
    goto/16 :goto_1

    .line 345
    .line 346
    :cond_9
    if-eqz p2, :cond_a

    .line 347
    .line 348
    invoke-virtual {v0}, Lb5/b;->e()V

    .line 349
    .line 350
    .line 351
    :cond_a
    return-void

    .line 352
    nop

    .line 353
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lu1/q;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lu1/q;->B()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lu1/q;->B()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    and-int/lit16 v0, v0, 0x80

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    const/4 v0, 0x6

    .line 18
    invoke-virtual {p1, v0}, Lu1/q;->P(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lu1/q;->a()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x4

    .line 26
    div-int/2addr v0, v1

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_0
    iget-object v4, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v4, Ls3/b0;

    .line 32
    .line 33
    if-ge v3, v0, :cond_4

    .line 34
    .line 35
    iget-object v5, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v5, Lj3/f;

    .line 38
    .line 39
    iget-object v6, v5, Lj3/f;->b:[B

    .line 40
    .line 41
    invoke-virtual {p1, v2, v1, v6}, Lu1/q;->l(II[B)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v2}, Lj3/f;->m(I)V

    .line 45
    .line 46
    .line 47
    const/16 v6, 0x10

    .line 48
    .line 49
    invoke-virtual {v5, v6}, Lj3/f;->g(I)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    const/4 v7, 0x3

    .line 54
    invoke-virtual {v5, v7}, Lj3/f;->o(I)V

    .line 55
    .line 56
    .line 57
    const/16 v7, 0xd

    .line 58
    .line 59
    if-nez v6, :cond_2

    .line 60
    .line 61
    invoke-virtual {v5, v7}, Lj3/f;->o(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {v5, v7}, Lj3/f;->g(I)I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    iget-object v6, v4, Ls3/b0;->g:Landroid/util/SparseArray;

    .line 70
    .line 71
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    if-nez v6, :cond_3

    .line 76
    .line 77
    iget-object v6, v4, Ls3/b0;->g:Landroid/util/SparseArray;

    .line 78
    .line 79
    new-instance v7, Ls3/z;

    .line 80
    .line 81
    new-instance v8, Lg3/j;

    .line 82
    .line 83
    invoke-direct {v8, v4, v5}, Lg3/j;-><init>(Ls3/b0;I)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v7, v8}, Ls3/z;-><init>(Ls3/y;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget v5, v4, Ls3/b0;->m:I

    .line 93
    .line 94
    add-int/lit8 v5, v5, 0x1

    .line 95
    .line 96
    iput v5, v4, Ls3/b0;->m:I

    .line 97
    .line 98
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iget-object p1, v4, Ls3/b0;->g:Landroid/util/SparseArray;

    .line 105
    .line 106
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public b([BIILi3/i;Lu1/f;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, -0x1

    .line 8
    const/4 v5, 0x1

    .line 9
    add-int v6, v0, p3

    .line 10
    .line 11
    iget-object v7, v1, Lkf/d;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v7, Lu1/q;

    .line 14
    .line 15
    move-object/from16 v8, p1

    .line 16
    .line 17
    invoke-virtual {v7, v6, v8}, Lu1/q;->M(I[B)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v7, v0}, Lu1/q;->O(I)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    :try_start_0
    invoke-static {v7}, Lr3/i;->c(Lu1/q;)V
    :try_end_0
    .catch Lr1/f0; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :goto_0
    sget-object v6, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 32
    .line 33
    invoke-virtual {v7, v6}, Lu1/q;->p(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-nez v6, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_1
    const/4 v8, -0x1

    .line 50
    const/4 v9, 0x0

    .line 51
    :goto_2
    if-ne v8, v4, :cond_5

    .line 52
    .line 53
    iget v9, v7, Lu1/q;->b:I

    .line 54
    .line 55
    sget-object v8, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 56
    .line 57
    invoke-virtual {v7, v8}, Lu1/q;->p(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    if-nez v8, :cond_2

    .line 62
    .line 63
    const/4 v8, 0x0

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    const-string v11, "STYLE"

    .line 66
    .line 67
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    if-eqz v11, :cond_3

    .line 72
    .line 73
    const/4 v8, 0x2

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    const-string v11, "NOTE"

    .line 76
    .line 77
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-eqz v8, :cond_4

    .line 82
    .line 83
    const/4 v8, 0x1

    .line 84
    goto :goto_2

    .line 85
    :cond_4
    const/4 v8, 0x3

    .line 86
    goto :goto_2

    .line 87
    :cond_5
    invoke-virtual {v7, v9}, Lu1/q;->O(I)V

    .line 88
    .line 89
    .line 90
    if-eqz v8, :cond_3b

    .line 91
    .line 92
    if-ne v8, v5, :cond_6

    .line 93
    .line 94
    :goto_3
    sget-object v8, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 95
    .line 96
    invoke-virtual {v7, v8}, Lu1/q;->p(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-nez v8, :cond_1

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_6
    if-ne v8, v2, :cond_36

    .line 108
    .line 109
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-eqz v8, :cond_35

    .line 114
    .line 115
    sget-object v8, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 116
    .line 117
    invoke-virtual {v7, v8}, Lu1/q;->p(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    iget-object v8, v1, Lkf/d;->c:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v8, Lr3/a;

    .line 123
    .line 124
    iget-object v11, v8, Lr3/a;->b:Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 127
    .line 128
    .line 129
    iget v12, v7, Lu1/q;->b:I

    .line 130
    .line 131
    :goto_4
    sget-object v13, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 132
    .line 133
    invoke-virtual {v7, v13}, Lu1/q;->p(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v13

    .line 137
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result v13

    .line 141
    if-eqz v13, :cond_34

    .line 142
    .line 143
    iget-object v13, v7, Lu1/q;->a:[B

    .line 144
    .line 145
    iget v14, v7, Lu1/q;->b:I

    .line 146
    .line 147
    iget-object v8, v8, Lr3/a;->a:Lu1/q;

    .line 148
    .line 149
    invoke-virtual {v8, v14, v13}, Lu1/q;->M(I[B)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8, v12}, Lu1/q;->O(I)V

    .line 153
    .line 154
    .line 155
    new-instance v12, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    :goto_5
    invoke-static {v8}, Lr3/a;->c(Lu1/q;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8}, Lu1/q;->a()I

    .line 164
    .line 165
    .line 166
    move-result v13

    .line 167
    const-string v14, "{"

    .line 168
    .line 169
    const/4 v15, 0x5

    .line 170
    if-ge v13, v15, :cond_7

    .line 171
    .line 172
    :goto_6
    const/4 v13, 0x0

    .line 173
    goto/16 :goto_a

    .line 174
    .line 175
    :cond_7
    sget-object v13, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 176
    .line 177
    invoke-virtual {v8, v13, v15}, Lu1/q;->z(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v13

    .line 181
    const-string v15, "::cue"

    .line 182
    .line 183
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    if-nez v13, :cond_8

    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_8
    iget v13, v8, Lu1/q;->b:I

    .line 191
    .line 192
    invoke-static {v8, v11}, Lr3/a;->b(Lu1/q;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v15

    .line 196
    if-nez v15, :cond_9

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_9
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v16

    .line 203
    if-eqz v16, :cond_a

    .line 204
    .line 205
    invoke-virtual {v8, v13}, Lu1/q;->O(I)V

    .line 206
    .line 207
    .line 208
    const-string v13, ""

    .line 209
    .line 210
    goto :goto_a

    .line 211
    :cond_a
    const-string v13, "("

    .line 212
    .line 213
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v13

    .line 217
    if-eqz v13, :cond_d

    .line 218
    .line 219
    iget v13, v8, Lu1/q;->b:I

    .line 220
    .line 221
    iget v15, v8, Lu1/q;->c:I

    .line 222
    .line 223
    const/16 v16, 0x0

    .line 224
    .line 225
    :goto_7
    if-ge v13, v15, :cond_c

    .line 226
    .line 227
    if-nez v16, :cond_c

    .line 228
    .line 229
    iget-object v9, v8, Lu1/q;->a:[B

    .line 230
    .line 231
    add-int/lit8 v16, v13, 0x1

    .line 232
    .line 233
    aget-byte v9, v9, v13

    .line 234
    .line 235
    int-to-char v9, v9

    .line 236
    const/16 v13, 0x29

    .line 237
    .line 238
    if-ne v9, v13, :cond_b

    .line 239
    .line 240
    const/4 v9, 0x1

    .line 241
    goto :goto_8

    .line 242
    :cond_b
    const/4 v9, 0x0

    .line 243
    :goto_8
    move/from16 v13, v16

    .line 244
    .line 245
    move/from16 v16, v9

    .line 246
    .line 247
    goto :goto_7

    .line 248
    :cond_c
    add-int/2addr v13, v4

    .line 249
    iget v9, v8, Lu1/q;->b:I

    .line 250
    .line 251
    sub-int/2addr v13, v9

    .line 252
    sget-object v9, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 253
    .line 254
    invoke-virtual {v8, v9, v13}, Lu1/q;->z(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v9

    .line 258
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    move-object v13, v9

    .line 263
    goto :goto_9

    .line 264
    :cond_d
    const/4 v13, 0x0

    .line 265
    :goto_9
    invoke-static {v8, v11}, Lr3/a;->b(Lu1/q;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v9

    .line 269
    const-string v15, ")"

    .line 270
    .line 271
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v9

    .line 275
    if-nez v9, :cond_e

    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_e
    :goto_a
    if-eqz v13, :cond_f

    .line 279
    .line 280
    invoke-static {v8, v11}, Lr3/a;->b(Lu1/q;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v9

    .line 288
    if-nez v9, :cond_10

    .line 289
    .line 290
    :cond_f
    const/4 v1, 0x1

    .line 291
    const/4 v3, 0x2

    .line 292
    goto/16 :goto_1d

    .line 293
    .line 294
    :cond_10
    new-instance v9, Lr3/b;

    .line 295
    .line 296
    invoke-direct {v9}, Lr3/b;-><init>()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 300
    .line 301
    .line 302
    move-result v14

    .line 303
    if-eqz v14, :cond_11

    .line 304
    .line 305
    goto :goto_d

    .line 306
    :cond_11
    const/16 v14, 0x5b

    .line 307
    .line 308
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    .line 309
    .line 310
    .line 311
    move-result v14

    .line 312
    if-eq v14, v4, :cond_13

    .line 313
    .line 314
    sget-object v15, Lr3/a;->c:Ljava/util/regex/Pattern;

    .line 315
    .line 316
    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v10

    .line 320
    invoke-virtual {v15, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 321
    .line 322
    .line 323
    move-result-object v10

    .line 324
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    .line 325
    .line 326
    .line 327
    move-result v15

    .line 328
    if-eqz v15, :cond_12

    .line 329
    .line 330
    invoke-virtual {v10, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v10

    .line 334
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    iput-object v10, v9, Lr3/b;->d:Ljava/lang/String;

    .line 338
    .line 339
    :cond_12
    invoke-virtual {v13, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v13

    .line 343
    :cond_13
    sget-object v10, Lu1/f0;->a:Ljava/lang/String;

    .line 344
    .line 345
    const-string v10, "\\."

    .line 346
    .line 347
    invoke-virtual {v13, v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v10

    .line 351
    aget-object v13, v10, v3

    .line 352
    .line 353
    const/16 v14, 0x23

    .line 354
    .line 355
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    .line 356
    .line 357
    .line 358
    move-result v14

    .line 359
    if-eq v14, v4, :cond_14

    .line 360
    .line 361
    invoke-virtual {v13, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v15

    .line 365
    iput-object v15, v9, Lr3/b;->b:Ljava/lang/String;

    .line 366
    .line 367
    add-int/2addr v14, v5

    .line 368
    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v13

    .line 372
    iput-object v13, v9, Lr3/b;->a:Ljava/lang/String;

    .line 373
    .line 374
    goto :goto_b

    .line 375
    :cond_14
    iput-object v13, v9, Lr3/b;->b:Ljava/lang/String;

    .line 376
    .line 377
    :goto_b
    array-length v13, v10

    .line 378
    if-le v13, v5, :cond_16

    .line 379
    .line 380
    array-length v13, v10

    .line 381
    array-length v14, v10

    .line 382
    if-gt v13, v14, :cond_15

    .line 383
    .line 384
    const/4 v14, 0x1

    .line 385
    goto :goto_c

    .line 386
    :cond_15
    const/4 v14, 0x0

    .line 387
    :goto_c
    invoke-static {v14}, La9/o;->k(Z)V

    .line 388
    .line 389
    .line 390
    invoke-static {v10, v5, v13}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v10

    .line 394
    check-cast v10, [Ljava/lang/String;

    .line 395
    .line 396
    new-instance v13, Ljava/util/HashSet;

    .line 397
    .line 398
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 399
    .line 400
    .line 401
    move-result-object v10

    .line 402
    invoke-direct {v13, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 403
    .line 404
    .line 405
    iput-object v13, v9, Lr3/b;->c:Ljava/util/Set;

    .line 406
    .line 407
    :cond_16
    :goto_d
    const/4 v10, 0x0

    .line 408
    const/4 v13, 0x0

    .line 409
    :goto_e
    const-string v14, "}"

    .line 410
    .line 411
    if-nez v10, :cond_31

    .line 412
    .line 413
    iget v10, v8, Lu1/q;->b:I

    .line 414
    .line 415
    invoke-static {v8, v11}, Lr3/a;->b(Lu1/q;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v13

    .line 419
    if-eqz v13, :cond_18

    .line 420
    .line 421
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v15

    .line 425
    if-eqz v15, :cond_17

    .line 426
    .line 427
    goto :goto_f

    .line 428
    :cond_17
    const/4 v15, 0x0

    .line 429
    goto :goto_10

    .line 430
    :cond_18
    :goto_f
    const/4 v15, 0x1

    .line 431
    :goto_10
    if-nez v15, :cond_30

    .line 432
    .line 433
    invoke-virtual {v8, v10}, Lu1/q;->O(I)V

    .line 434
    .line 435
    .line 436
    invoke-static {v8}, Lr3/a;->c(Lu1/q;)V

    .line 437
    .line 438
    .line 439
    invoke-static {v8, v11}, Lr3/a;->a(Lu1/q;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v10

    .line 443
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 444
    .line 445
    .line 446
    move-result v16

    .line 447
    if-eqz v16, :cond_19

    .line 448
    .line 449
    goto/16 :goto_1b

    .line 450
    .line 451
    :cond_19
    const-string v3, ":"

    .line 452
    .line 453
    invoke-static {v8, v11}, Lr3/a;->b(Lu1/q;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v3

    .line 461
    if-nez v3, :cond_1a

    .line 462
    .line 463
    goto/16 :goto_1b

    .line 464
    .line 465
    :cond_1a
    invoke-static {v8}, Lr3/a;->c(Lu1/q;)V

    .line 466
    .line 467
    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    .line 472
    .line 473
    const/4 v4, 0x0

    .line 474
    :goto_11
    const-string v2, ";"

    .line 475
    .line 476
    if-nez v4, :cond_1e

    .line 477
    .line 478
    iget v5, v8, Lu1/q;->b:I

    .line 479
    .line 480
    invoke-static {v8, v11}, Lr3/a;->b(Lu1/q;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    if-nez v1, :cond_1b

    .line 485
    .line 486
    const/4 v1, 0x0

    .line 487
    goto :goto_14

    .line 488
    :cond_1b
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    move-result v17

    .line 492
    if-nez v17, :cond_1d

    .line 493
    .line 494
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v2

    .line 498
    if-eqz v2, :cond_1c

    .line 499
    .line 500
    goto :goto_13

    .line 501
    :cond_1c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    :goto_12
    move-object/from16 v1, p0

    .line 505
    .line 506
    const/4 v5, 0x1

    .line 507
    goto :goto_11

    .line 508
    :cond_1d
    :goto_13
    invoke-virtual {v8, v5}, Lu1/q;->O(I)V

    .line 509
    .line 510
    .line 511
    const/4 v4, 0x1

    .line 512
    goto :goto_12

    .line 513
    :cond_1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    :goto_14
    if-eqz v1, :cond_30

    .line 518
    .line 519
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 520
    .line 521
    .line 522
    move-result v3

    .line 523
    if-eqz v3, :cond_1f

    .line 524
    .line 525
    goto/16 :goto_1b

    .line 526
    .line 527
    :cond_1f
    iget v3, v8, Lu1/q;->b:I

    .line 528
    .line 529
    invoke-static {v8, v11}, Lr3/a;->b(Lu1/q;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    move-result v2

    .line 537
    if-eqz v2, :cond_20

    .line 538
    .line 539
    goto :goto_15

    .line 540
    :cond_20
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    move-result v2

    .line 544
    if-eqz v2, :cond_30

    .line 545
    .line 546
    invoke-virtual {v8, v3}, Lu1/q;->O(I)V

    .line 547
    .line 548
    .line 549
    :goto_15
    const-string v2, "color"

    .line 550
    .line 551
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    move-result v2

    .line 555
    if-eqz v2, :cond_21

    .line 556
    .line 557
    const/4 v2, 0x1

    .line 558
    invoke-static {v1, v2}, Lu1/d;->a(Ljava/lang/String;Z)I

    .line 559
    .line 560
    .line 561
    move-result v1

    .line 562
    iput v1, v9, Lr3/b;->f:I

    .line 563
    .line 564
    iput-boolean v2, v9, Lr3/b;->g:Z

    .line 565
    .line 566
    goto/16 :goto_1b

    .line 567
    .line 568
    :cond_21
    const/4 v2, 0x1

    .line 569
    const-string v3, "background-color"

    .line 570
    .line 571
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result v3

    .line 575
    if-eqz v3, :cond_22

    .line 576
    .line 577
    invoke-static {v1, v2}, Lu1/d;->a(Ljava/lang/String;Z)I

    .line 578
    .line 579
    .line 580
    move-result v1

    .line 581
    iput v1, v9, Lr3/b;->h:I

    .line 582
    .line 583
    iput-boolean v2, v9, Lr3/b;->i:Z

    .line 584
    .line 585
    goto/16 :goto_1b

    .line 586
    .line 587
    :cond_22
    const-string v3, "ruby-position"

    .line 588
    .line 589
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v3

    .line 593
    if-eqz v3, :cond_24

    .line 594
    .line 595
    const-string v3, "over"

    .line 596
    .line 597
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    move-result v3

    .line 601
    if-eqz v3, :cond_23

    .line 602
    .line 603
    iput v2, v9, Lr3/b;->p:I

    .line 604
    .line 605
    goto/16 :goto_1b

    .line 606
    .line 607
    :cond_23
    const-string v2, "under"

    .line 608
    .line 609
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result v1

    .line 613
    if-eqz v1, :cond_30

    .line 614
    .line 615
    const/4 v1, 0x2

    .line 616
    iput v1, v9, Lr3/b;->p:I

    .line 617
    .line 618
    goto/16 :goto_1b

    .line 619
    .line 620
    :cond_24
    const-string v2, "text-combine-upright"

    .line 621
    .line 622
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    move-result v2

    .line 626
    if-eqz v2, :cond_27

    .line 627
    .line 628
    const-string v2, "all"

    .line 629
    .line 630
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    move-result v2

    .line 634
    if-nez v2, :cond_26

    .line 635
    .line 636
    const-string v2, "digits"

    .line 637
    .line 638
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 639
    .line 640
    .line 641
    move-result v1

    .line 642
    if-eqz v1, :cond_25

    .line 643
    .line 644
    goto :goto_16

    .line 645
    :cond_25
    const/4 v1, 0x0

    .line 646
    goto :goto_17

    .line 647
    :cond_26
    :goto_16
    const/4 v1, 0x1

    .line 648
    :goto_17
    iput-boolean v1, v9, Lr3/b;->q:Z

    .line 649
    .line 650
    goto/16 :goto_1b

    .line 651
    .line 652
    :cond_27
    const-string v2, "text-decoration"

    .line 653
    .line 654
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    move-result v2

    .line 658
    if-eqz v2, :cond_28

    .line 659
    .line 660
    const-string v2, "underline"

    .line 661
    .line 662
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    move-result v1

    .line 666
    if-eqz v1, :cond_30

    .line 667
    .line 668
    const/4 v1, 0x1

    .line 669
    iput v1, v9, Lr3/b;->k:I

    .line 670
    .line 671
    goto/16 :goto_1b

    .line 672
    .line 673
    :cond_28
    const-string v2, "font-family"

    .line 674
    .line 675
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    move-result v2

    .line 679
    if-eqz v2, :cond_29

    .line 680
    .line 681
    invoke-static {v1}, Lqf/c;->b0(Ljava/lang/String;)Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v1

    .line 685
    iput-object v1, v9, Lr3/b;->e:Ljava/lang/String;

    .line 686
    .line 687
    goto/16 :goto_1b

    .line 688
    .line 689
    :cond_29
    const-string v2, "font-weight"

    .line 690
    .line 691
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 692
    .line 693
    .line 694
    move-result v2

    .line 695
    if-eqz v2, :cond_2a

    .line 696
    .line 697
    const-string v2, "bold"

    .line 698
    .line 699
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    move-result v1

    .line 703
    if-eqz v1, :cond_30

    .line 704
    .line 705
    const/4 v2, 0x1

    .line 706
    iput v2, v9, Lr3/b;->l:I

    .line 707
    .line 708
    goto/16 :goto_1b

    .line 709
    .line 710
    :cond_2a
    const/4 v2, 0x1

    .line 711
    const-string v3, "font-style"

    .line 712
    .line 713
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 714
    .line 715
    .line 716
    move-result v3

    .line 717
    if-eqz v3, :cond_2b

    .line 718
    .line 719
    const-string v3, "italic"

    .line 720
    .line 721
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 722
    .line 723
    .line 724
    move-result v1

    .line 725
    if-eqz v1, :cond_30

    .line 726
    .line 727
    iput v2, v9, Lr3/b;->m:I

    .line 728
    .line 729
    goto/16 :goto_1b

    .line 730
    .line 731
    :cond_2b
    const-string v2, "font-size"

    .line 732
    .line 733
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    move-result v2

    .line 737
    if-eqz v2, :cond_30

    .line 738
    .line 739
    invoke-static {v1}, Lqf/c;->b0(Ljava/lang/String;)Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v2

    .line 743
    sget-object v3, Lr3/a;->d:Ljava/util/regex/Pattern;

    .line 744
    .line 745
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 746
    .line 747
    .line 748
    move-result-object v2

    .line 749
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 750
    .line 751
    .line 752
    move-result v3

    .line 753
    if-nez v3, :cond_2c

    .line 754
    .line 755
    new-instance v2, Ljava/lang/StringBuilder;

    .line 756
    .line 757
    const-string v3, "Invalid font-size: \'"

    .line 758
    .line 759
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    const-string v1, "\'."

    .line 766
    .line 767
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v1

    .line 774
    invoke-static {v1}, Lu1/a;->p(Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    goto :goto_1b

    .line 778
    :cond_2c
    const/4 v1, 0x2

    .line 779
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v3

    .line 783
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 784
    .line 785
    .line 786
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 787
    .line 788
    .line 789
    move-result v1

    .line 790
    sparse-switch v1, :sswitch_data_0

    .line 791
    .line 792
    .line 793
    :goto_18
    const/4 v1, -0x1

    .line 794
    goto :goto_19

    .line 795
    :sswitch_0
    const-string v1, "px"

    .line 796
    .line 797
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 798
    .line 799
    .line 800
    move-result v1

    .line 801
    if-nez v1, :cond_2d

    .line 802
    .line 803
    goto :goto_18

    .line 804
    :cond_2d
    const/4 v1, 0x2

    .line 805
    goto :goto_19

    .line 806
    :sswitch_1
    const-string v1, "em"

    .line 807
    .line 808
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 809
    .line 810
    .line 811
    move-result v1

    .line 812
    if-nez v1, :cond_2e

    .line 813
    .line 814
    goto :goto_18

    .line 815
    :cond_2e
    const/4 v1, 0x1

    .line 816
    goto :goto_19

    .line 817
    :sswitch_2
    const-string v1, "%"

    .line 818
    .line 819
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 820
    .line 821
    .line 822
    move-result v1

    .line 823
    if-nez v1, :cond_2f

    .line 824
    .line 825
    goto :goto_18

    .line 826
    :cond_2f
    const/4 v1, 0x0

    .line 827
    :goto_19
    packed-switch v1, :pswitch_data_0

    .line 828
    .line 829
    .line 830
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 831
    .line 832
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 833
    .line 834
    .line 835
    throw v0

    .line 836
    :pswitch_0
    const/4 v1, 0x1

    .line 837
    iput v1, v9, Lr3/b;->n:I

    .line 838
    .line 839
    const/4 v3, 0x2

    .line 840
    goto :goto_1a

    .line 841
    :pswitch_1
    const/4 v1, 0x1

    .line 842
    const/4 v3, 0x2

    .line 843
    iput v3, v9, Lr3/b;->n:I

    .line 844
    .line 845
    goto :goto_1a

    .line 846
    :pswitch_2
    const/4 v1, 0x1

    .line 847
    const/4 v3, 0x2

    .line 848
    const/4 v4, 0x3

    .line 849
    iput v4, v9, Lr3/b;->n:I

    .line 850
    .line 851
    :goto_1a
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v2

    .line 855
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 856
    .line 857
    .line 858
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 859
    .line 860
    .line 861
    move-result v2

    .line 862
    iput v2, v9, Lr3/b;->o:F

    .line 863
    .line 864
    goto :goto_1c

    .line 865
    :cond_30
    :goto_1b
    const/4 v1, 0x1

    .line 866
    const/4 v3, 0x2

    .line 867
    :goto_1c
    move-object/from16 v1, p0

    .line 868
    .line 869
    move v10, v15

    .line 870
    const/4 v2, 0x2

    .line 871
    const/4 v3, 0x0

    .line 872
    const/4 v4, -0x1

    .line 873
    const/4 v5, 0x1

    .line 874
    goto/16 :goto_e

    .line 875
    .line 876
    :cond_31
    const/4 v1, 0x1

    .line 877
    const/4 v3, 0x2

    .line 878
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 879
    .line 880
    .line 881
    move-result v2

    .line 882
    if-eqz v2, :cond_32

    .line 883
    .line 884
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    .line 886
    .line 887
    :cond_32
    move-object/from16 v1, p0

    .line 888
    .line 889
    const/4 v2, 0x2

    .line 890
    const/4 v3, 0x0

    .line 891
    const/4 v4, -0x1

    .line 892
    const/4 v5, 0x1

    .line 893
    goto/16 :goto_5

    .line 894
    .line 895
    :goto_1d
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 896
    .line 897
    .line 898
    :cond_33
    :goto_1e
    move-object/from16 v1, p0

    .line 899
    .line 900
    const/4 v2, 0x2

    .line 901
    const/4 v3, 0x0

    .line 902
    const/4 v4, -0x1

    .line 903
    const/4 v5, 0x1

    .line 904
    goto/16 :goto_1

    .line 905
    .line 906
    :cond_34
    move-object/from16 v1, p0

    .line 907
    .line 908
    goto/16 :goto_4

    .line 909
    .line 910
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 911
    .line 912
    const-string v1, "A style block was found after the first cue."

    .line 913
    .line 914
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 915
    .line 916
    .line 917
    throw v0

    .line 918
    :cond_36
    const/4 v1, 0x1

    .line 919
    const/4 v2, 0x3

    .line 920
    const/4 v3, 0x2

    .line 921
    if-ne v8, v2, :cond_33

    .line 922
    .line 923
    sget-object v2, Lr3/h;->a:Ljava/util/regex/Pattern;

    .line 924
    .line 925
    sget-object v2, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 926
    .line 927
    invoke-virtual {v7, v2}, Lu1/q;->p(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v4

    .line 931
    if-nez v4, :cond_37

    .line 932
    .line 933
    const/4 v9, 0x0

    .line 934
    goto :goto_1f

    .line 935
    :cond_37
    sget-object v5, Lr3/h;->a:Ljava/util/regex/Pattern;

    .line 936
    .line 937
    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 938
    .line 939
    .line 940
    move-result-object v8

    .line 941
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    .line 942
    .line 943
    .line 944
    move-result v9

    .line 945
    if-eqz v9, :cond_38

    .line 946
    .line 947
    const/4 v9, 0x0

    .line 948
    invoke-static {v9, v8, v7, v0}, Lr3/h;->d(Ljava/lang/String;Ljava/util/regex/Matcher;Lu1/q;Ljava/util/ArrayList;)Lr3/c;

    .line 949
    .line 950
    .line 951
    move-result-object v9

    .line 952
    goto :goto_1f

    .line 953
    :cond_38
    const/4 v9, 0x0

    .line 954
    invoke-virtual {v7, v2}, Lu1/q;->p(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 955
    .line 956
    .line 957
    move-result-object v2

    .line 958
    if-nez v2, :cond_39

    .line 959
    .line 960
    goto :goto_1f

    .line 961
    :cond_39
    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 962
    .line 963
    .line 964
    move-result-object v2

    .line 965
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 966
    .line 967
    .line 968
    move-result v5

    .line 969
    if-eqz v5, :cond_3a

    .line 970
    .line 971
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 972
    .line 973
    .line 974
    move-result-object v4

    .line 975
    invoke-static {v4, v2, v7, v0}, Lr3/h;->d(Ljava/lang/String;Ljava/util/regex/Matcher;Lu1/q;Ljava/util/ArrayList;)Lr3/c;

    .line 976
    .line 977
    .line 978
    move-result-object v9

    .line 979
    :cond_3a
    :goto_1f
    if-eqz v9, :cond_33

    .line 980
    .line 981
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    .line 983
    .line 984
    goto :goto_1e

    .line 985
    :cond_3b
    new-instance v0, Lv3/f;

    .line 986
    .line 987
    invoke-direct {v0, v6}, Lv3/f;-><init>(Ljava/util/ArrayList;)V

    .line 988
    .line 989
    .line 990
    move-object/from16 v1, p4

    .line 991
    .line 992
    move-object/from16 v2, p5

    .line 993
    .line 994
    invoke-static {v0, v1, v2}, Lq4/a;->c0(Li3/d;Li3/i;Lu1/f;)V

    .line 995
    .line 996
    .line 997
    return-void

    .line 998
    :catch_0
    move-exception v0

    .line 999
    move-object v1, v0

    .line 1000
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1001
    .line 1002
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 1003
    .line 1004
    .line 1005
    goto :goto_21

    .line 1006
    :goto_20
    throw v0

    .line 1007
    :goto_21
    goto :goto_20

    .line 1008
    nop

    .line 1009
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Lu1/d0;Ll2/q;Ls3/d0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d(II[B)I
    .locals 4

    .line 1
    if-ltz p2, :cond_1

    .line 2
    .line 3
    move v0, p1

    .line 4
    :goto_0
    add-int v1, p1, p2

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    aget-byte v1, p3, v0

    .line 9
    .line 10
    iget-object v2, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Lvf/b;

    .line 13
    .line 14
    invoke-virtual {v2}, Lvf/b;->a()B

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    and-int/lit16 v3, v3, 0xff

    .line 19
    .line 20
    xor-int/2addr v3, v1

    .line 21
    int-to-byte v3, v3

    .line 22
    invoke-virtual {v2, v1}, Lvf/b;->c(B)V

    .line 23
    .line 24
    .line 25
    aput-byte v3, p3, v0

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return p2

    .line 31
    :cond_1
    new-instance p1, Lwf/a;

    .line 32
    .line 33
    const-string p2, "invalid length specified to decrpyt data"

    .line 34
    .line 35
    invoke-direct {p1, p2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :goto_1
    throw p1

    .line 40
    :goto_2
    goto :goto_1
.end method

.method public synthetic e(II[B)Li3/d;
    .locals 0

    .line 1
    invoke-static {p0, p3, p2}, Lg/b;->a(Li3/j;[BI)Li3/b;

    move-result-object p1

    return-object p1
.end method

.method public f(Lf5/i;)I
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    return p1
.end method

.method public g(Ljava/lang/Object;Ljava/io/File;Lf5/i;)Z
    .locals 2

    .line 1
    check-cast p1, Lh5/z;

    .line 2
    .line 3
    new-instance v0, Lo5/d;

    .line 4
    .line 5
    invoke-interface {p1}, Lh5/z;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v1, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Li5/c;

    .line 18
    .line 19
    invoke-direct {v0, p1, v1}, Lo5/d;-><init>(Landroid/graphics/Bitmap;Li5/c;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Lo5/b;

    .line 25
    .line 26
    invoke-virtual {p1, v0, p2, p3}, Lo5/b;->g(Ljava/lang/Object;Ljava/io/File;Lf5/i;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public h(Ll2/l;J)Ll2/h;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-wide v5, v1, Ll2/l;->d:J

    .line 6
    .line 7
    iget-wide v2, v1, Ll2/l;->c:J

    .line 8
    .line 9
    sub-long/2addr v2, v5

    .line 10
    const-wide/16 v7, 0x4e20

    .line 11
    .line 12
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    long-to-int v3, v2

    .line 17
    iget-object v2, v0, Lkf/d;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Lu1/q;

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lu1/q;->L(I)V

    .line 22
    .line 23
    .line 24
    iget-object v4, v2, Lu1/q;->a:[B

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    invoke-virtual {v1, v4, v7, v3, v7}, Ll2/l;->c([BIIZ)Z

    .line 28
    .line 29
    .line 30
    const/4 v1, -0x1

    .line 31
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    move-wide v10, v3

    .line 37
    const/4 v7, -0x1

    .line 38
    :goto_0
    invoke-virtual {v2}, Lu1/q;->a()I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    const/4 v9, 0x4

    .line 43
    if-lt v8, v9, :cond_e

    .line 44
    .line 45
    iget-object v8, v2, Lu1/q;->a:[B

    .line 46
    .line 47
    iget v12, v2, Lu1/q;->b:I

    .line 48
    .line 49
    invoke-static {v12, v8}, Lq2/a;->a(I[B)I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    const/4 v12, 0x1

    .line 54
    const/16 v13, 0x1ba

    .line 55
    .line 56
    if-eq v8, v13, :cond_0

    .line 57
    .line 58
    invoke-virtual {v2, v12}, Lu1/q;->P(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v2, v9}, Lu1/q;->P(I)V

    .line 63
    .line 64
    .line 65
    invoke-static {v2}, Ls3/v;->c(Lu1/q;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v14

    .line 69
    cmp-long v1, v14, v3

    .line 70
    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    iget-object v1, v0, Lkf/d;->b:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, Lu1/d0;

    .line 76
    .line 77
    invoke-virtual {v1, v14, v15}, Lu1/d0;->b(J)J

    .line 78
    .line 79
    .line 80
    move-result-wide v14

    .line 81
    cmp-long v1, v14, p2

    .line 82
    .line 83
    if-lez v1, :cond_2

    .line 84
    .line 85
    cmp-long v1, v10, v3

    .line 86
    .line 87
    if-nez v1, :cond_1

    .line 88
    .line 89
    new-instance v7, Ll2/h;

    .line 90
    .line 91
    const/4 v2, -0x1

    .line 92
    move-object v1, v7

    .line 93
    move-wide v3, v14

    .line 94
    invoke-direct/range {v1 .. v6}, Ll2/h;-><init>(IJJ)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_4

    .line 98
    .line 99
    :cond_1
    int-to-long v1, v7

    .line 100
    add-long v11, v5, v1

    .line 101
    .line 102
    new-instance v1, Ll2/h;

    .line 103
    .line 104
    const/4 v8, 0x0

    .line 105
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    move-object v7, v1

    .line 111
    invoke-direct/range {v7 .. v12}, Ll2/h;-><init>(IJJ)V

    .line 112
    .line 113
    .line 114
    :goto_1
    move-object v7, v1

    .line 115
    goto/16 :goto_4

    .line 116
    .line 117
    :cond_2
    const-wide/32 v7, 0x186a0

    .line 118
    .line 119
    .line 120
    add-long/2addr v7, v14

    .line 121
    cmp-long v1, v7, p2

    .line 122
    .line 123
    if-lez v1, :cond_3

    .line 124
    .line 125
    iget v1, v2, Lu1/q;->b:I

    .line 126
    .line 127
    int-to-long v1, v1

    .line 128
    add-long v11, v5, v1

    .line 129
    .line 130
    new-instance v1, Ll2/h;

    .line 131
    .line 132
    const/4 v8, 0x0

    .line 133
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    move-object v7, v1

    .line 139
    invoke-direct/range {v7 .. v12}, Ll2/h;-><init>(IJJ)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_3
    iget v1, v2, Lu1/q;->b:I

    .line 144
    .line 145
    move v7, v1

    .line 146
    move-wide v10, v14

    .line 147
    :cond_4
    iget v1, v2, Lu1/q;->c:I

    .line 148
    .line 149
    invoke-virtual {v2}, Lu1/q;->a()I

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    const/16 v14, 0xa

    .line 154
    .line 155
    if-ge v8, v14, :cond_5

    .line 156
    .line 157
    invoke-virtual {v2, v1}, Lu1/q;->O(I)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_3

    .line 161
    .line 162
    :cond_5
    const/16 v8, 0x9

    .line 163
    .line 164
    invoke-virtual {v2, v8}, Lu1/q;->P(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Lu1/q;->B()I

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    and-int/lit8 v8, v8, 0x7

    .line 172
    .line 173
    invoke-virtual {v2}, Lu1/q;->a()I

    .line 174
    .line 175
    .line 176
    move-result v14

    .line 177
    if-ge v14, v8, :cond_6

    .line 178
    .line 179
    invoke-virtual {v2, v1}, Lu1/q;->O(I)V

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_6
    invoke-virtual {v2, v8}, Lu1/q;->P(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Lu1/q;->a()I

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    if-ge v8, v9, :cond_7

    .line 191
    .line 192
    invoke-virtual {v2, v1}, Lu1/q;->O(I)V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_7
    iget-object v8, v2, Lu1/q;->a:[B

    .line 197
    .line 198
    iget v14, v2, Lu1/q;->b:I

    .line 199
    .line 200
    invoke-static {v14, v8}, Lq2/a;->a(I[B)I

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    const/16 v14, 0x1bb

    .line 205
    .line 206
    if-ne v8, v14, :cond_9

    .line 207
    .line 208
    invoke-virtual {v2, v9}, Lu1/q;->P(I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2}, Lu1/q;->I()I

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    invoke-virtual {v2}, Lu1/q;->a()I

    .line 216
    .line 217
    .line 218
    move-result v14

    .line 219
    if-ge v14, v8, :cond_8

    .line 220
    .line 221
    invoke-virtual {v2, v1}, Lu1/q;->O(I)V

    .line 222
    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_8
    invoke-virtual {v2, v8}, Lu1/q;->P(I)V

    .line 226
    .line 227
    .line 228
    :cond_9
    :goto_2
    invoke-virtual {v2}, Lu1/q;->a()I

    .line 229
    .line 230
    .line 231
    move-result v8

    .line 232
    if-lt v8, v9, :cond_d

    .line 233
    .line 234
    iget-object v8, v2, Lu1/q;->a:[B

    .line 235
    .line 236
    iget v14, v2, Lu1/q;->b:I

    .line 237
    .line 238
    invoke-static {v14, v8}, Lq2/a;->a(I[B)I

    .line 239
    .line 240
    .line 241
    move-result v8

    .line 242
    if-eq v8, v13, :cond_d

    .line 243
    .line 244
    const/16 v14, 0x1b9

    .line 245
    .line 246
    if-ne v8, v14, :cond_a

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_a
    ushr-int/lit8 v8, v8, 0x8

    .line 250
    .line 251
    if-eq v8, v12, :cond_b

    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_b
    invoke-virtual {v2, v9}, Lu1/q;->P(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2}, Lu1/q;->a()I

    .line 258
    .line 259
    .line 260
    move-result v8

    .line 261
    const/4 v14, 0x2

    .line 262
    if-ge v8, v14, :cond_c

    .line 263
    .line 264
    invoke-virtual {v2, v1}, Lu1/q;->O(I)V

    .line 265
    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_c
    invoke-virtual {v2}, Lu1/q;->I()I

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    iget v14, v2, Lu1/q;->c:I

    .line 273
    .line 274
    iget v15, v2, Lu1/q;->b:I

    .line 275
    .line 276
    add-int/2addr v15, v8

    .line 277
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    .line 278
    .line 279
    .line 280
    move-result v8

    .line 281
    invoke-virtual {v2, v8}, Lu1/q;->O(I)V

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_d
    :goto_3
    iget v1, v2, Lu1/q;->b:I

    .line 286
    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :cond_e
    cmp-long v2, v10, v3

    .line 290
    .line 291
    if-eqz v2, :cond_f

    .line 292
    .line 293
    int-to-long v1, v1

    .line 294
    add-long v12, v5, v1

    .line 295
    .line 296
    new-instance v7, Ll2/h;

    .line 297
    .line 298
    const/4 v9, -0x2

    .line 299
    move-object v8, v7

    .line 300
    invoke-direct/range {v8 .. v13}, Ll2/h;-><init>(IJJ)V

    .line 301
    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_f
    sget-object v7, Ll2/h;->d:Ll2/h;

    .line 305
    .line 306
    :goto_4
    return-object v7
.end method

.method public i()V
    .locals 3

    .line 1
    sget-object v0, Lu1/f0;->b:[B

    .line 2
    .line 3
    iget-object v1, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lu1/q;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    array-length v2, v0

    .line 11
    invoke-virtual {v1, v2, v0}, Lu1/q;->M(I[B)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public l(Landroid/graphics/Bitmap;Li5/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La6/f;

    .line 4
    .line 5
    iget-object v0, v0, La6/f;->b:Ljava/io/IOException;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p2, p1}, Li5/c;->c(Landroid/graphics/Bitmap;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    throw v0

    .line 15
    :cond_1
    return-void
.end method

.method public m(C)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-static {}, Loh/f;->b()Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v1, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 32
    .line 33
    iget-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-static {}, Loh/f;->b()Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v1, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 32
    .line 33
    iget-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iput-object p1, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public o()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkf/d;->A()Ljava/util/ArrayDeque;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Ljava/util/function/Supplier;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo5/w;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, v0, Lo5/w;->a:[B

    .line 7
    .line 8
    array-length v1, v1

    .line 9
    iput v1, v0, Lo5/w;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v1
.end method

.method public r(Lq4/i;)Lq4/b;
    .locals 3

    .line 1
    iget-object v0, p1, Lq4/i;->a:Lq4/j;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkf/d;->B(Lq4/j;)Lq4/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lq4/e;->i:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    iget-object v1, p1, Lq4/i;->c:Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "<init>"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    const-string v2, "<clinit>"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const v1, 0x10001

    .line 37
    .line 38
    .line 39
    :goto_1
    new-instance v2, Lq4/d;

    .line 40
    .line 41
    invoke-direct {v2, p1, v1}, Lq4/d;-><init>(Lq4/i;I)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iget-object p1, v2, Lq4/d;->c:Lq4/b;

    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "already declared: "

    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0
.end method

.method public reset()V
    .locals 4

    .line 1
    iget v0, p0, Lkf/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-object v2, Loh/f;->a:[Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/16 v3, 0x2000

    .line 21
    .line 22
    if-gt v2, v3, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    sget-object v2, Loh/f;->e:Lkf/d;

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Lkf/d;->N(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iput-object v1, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 38
    .line 39
    :cond_1
    iput-object v1, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public s(Lq4/f;I)V
    .locals 2

    .line 1
    iget-object v0, p1, Lq4/f;->a:Lq4/j;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkf/d;->B(Lq4/j;)Lq4/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lq4/e;->h:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lq4/c;

    .line 16
    .line 17
    invoke-direct {v1, p1, p2}, Lq4/c;-><init>(Lq4/f;I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "already declared: "

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p2
.end method

.method public t()V
    .locals 3

    .line 1
    iget v0, p0, Lkf/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iget-object v2, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;

    .line 15
    .line 16
    invoke-static {v2, v0, v1}, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->x(Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    :pswitch_1
    return-void

    .line 20
    :pswitch_2
    iget-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/ui/ActivityAdb;->D(Lcom/yunpan/appmanage/ui/ActivityAdb;Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lkf/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

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
    :pswitch_0
    iget-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v0, ""

    .line 30
    .line 31
    :goto_0
    return-object v0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized v(Lkh/i;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Lkh/i;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-object p1, v0, Lkh/i;->c:Lkh/i;

    .line 9
    .line 10
    iput-object p1, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v0, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lkh/i;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iput-object p1, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object p1, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "Head present, but no tail"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p1
.end method

.method public w(Ljava/lang/ClassLoader;Ljava/io/File;)Ljava/lang/ClassLoader;
    .locals 37

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/16 v2, 0x1d

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    if-nez p2, :cond_3

    .line 10
    .line 11
    const-string v6, "dexmaker.dexcache"

    .line 12
    .line 13
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    if-eqz v6, :cond_0

    .line 18
    .line 19
    new-instance v7, Ljava/io/File;

    .line 20
    .line 21
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    move-object v6, v7

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :try_start_0
    const-class v6, Lq4/a;

    .line 27
    .line 28
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    const-string v7, "dalvik.system.PathClassLoader"

    .line 33
    .line 34
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-virtual {v7, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    invoke-static {v6, v7}, Lq4/a;->w(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-static {v6}, Lq4/a;->B(Ljava/lang/String;)[Ljava/io/File;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    array-length v7, v6

    .line 50
    if-lez v7, :cond_1

    .line 51
    .line 52
    aget-object v6, v6, v5
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    nop

    .line 56
    :cond_1
    const/4 v6, 0x0

    .line 57
    :goto_0
    if-eqz v6, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    const-string v2, "dexcache == null (and no default could be found; consider setting the \'dexmaker.dexcache\' system property)"

    .line 63
    .line 64
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_3
    move-object/from16 v6, p2

    .line 69
    .line 70
    :goto_1
    new-instance v7, Ljava/io/File;

    .line 71
    .line 72
    iget-object v8, v1, Lkf/d;->b:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v8, Ljava/util/LinkedHashMap;

    .line 75
    .line 76
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    invoke-interface {v9}, Ljava/util/Set;->size()I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    new-array v11, v9, [I

    .line 89
    .line 90
    const/4 v12, 0x0

    .line 91
    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    if-eqz v13, :cond_5

    .line 96
    .line 97
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v13

    .line 101
    check-cast v13, Lq4/j;

    .line 102
    .line 103
    invoke-virtual {v1, v13}, Lkf/d;->B(Lq4/j;)Lq4/e;

    .line 104
    .line 105
    .line 106
    move-result-object v13

    .line 107
    iget-object v14, v13, Lq4/e;->i:Ljava/util/LinkedHashMap;

    .line 108
    .line 109
    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 110
    .line 111
    .line 112
    move-result-object v14

    .line 113
    iget-object v15, v13, Lq4/e;->d:Lq4/j;

    .line 114
    .line 115
    if-eqz v15, :cond_4

    .line 116
    .line 117
    iget-object v15, v15, Lq4/j;->a:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    .line 120
    .line 121
    .line 122
    move-result v15

    .line 123
    mul-int/lit8 v15, v15, 0x1f

    .line 124
    .line 125
    iget-object v13, v13, Lq4/e;->f:Lq4/k;

    .line 126
    .line 127
    iget-object v13, v13, Lq4/k;->a:[Lq4/j;

    .line 128
    .line 129
    invoke-static {v13}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 130
    .line 131
    .line 132
    move-result v13

    .line 133
    add-int/2addr v13, v15

    .line 134
    add-int/lit8 v15, v12, 0x1

    .line 135
    .line 136
    mul-int/lit8 v13, v13, 0x1f

    .line 137
    .line 138
    invoke-interface {v14}, Ljava/util/Set;->hashCode()I

    .line 139
    .line 140
    .line 141
    move-result v14

    .line 142
    add-int/2addr v14, v13

    .line 143
    aput v14, v11, v12

    .line 144
    .line 145
    move v12, v15

    .line 146
    goto :goto_2

    .line 147
    :cond_5
    invoke-static {v11}, Ljava/util/Arrays;->sort([I)V

    .line 148
    .line 149
    .line 150
    const/4 v10, 0x0

    .line 151
    const/4 v12, 0x1

    .line 152
    :goto_3
    if-ge v10, v9, :cond_6

    .line 153
    .line 154
    aget v13, v11, v10

    .line 155
    .line 156
    mul-int/lit8 v12, v12, 0x1f

    .line 157
    .line 158
    add-int/2addr v12, v13

    .line 159
    add-int/2addr v10, v3

    .line 160
    goto :goto_3

    .line 161
    :cond_6
    const-string v9, "Generated_"

    .line 162
    .line 163
    const-string v10, ".jar"

    .line 164
    .line 165
    invoke-static {v9, v12, v10}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    invoke-direct {v7, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 173
    .line 174
    .line 175
    move-result v9

    .line 176
    if-eqz v9, :cond_7

    .line 177
    .line 178
    invoke-virtual {v1, v7, v6, v0}, Lkf/d;->x(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    return-object v0

    .line 183
    :cond_7
    iget-object v9, v1, Lkf/d;->c:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v9, Lu4/f;

    .line 186
    .line 187
    if-nez v9, :cond_8

    .line 188
    .line 189
    new-instance v9, Lha/j2;

    .line 190
    .line 191
    invoke-direct {v9, v2}, Lha/j2;-><init>(I)V

    .line 192
    .line 193
    .line 194
    new-instance v10, Lu4/f;

    .line 195
    .line 196
    invoke-direct {v10, v9}, Lu4/f;-><init>(Lha/j2;)V

    .line 197
    .line 198
    .line 199
    iput-object v10, v1, Lkf/d;->c:Ljava/lang/Object;

    .line 200
    .line 201
    :cond_8
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result v9

    .line 213
    if-eqz v9, :cond_4a

    .line 214
    .line 215
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    check-cast v9, Lq4/e;

    .line 220
    .line 221
    iget-object v10, v1, Lkf/d;->c:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v10, Lu4/f;

    .line 224
    .line 225
    iget-boolean v11, v9, Lq4/e;->b:Z

    .line 226
    .line 227
    iget-object v12, v9, Lq4/e;->i:Ljava/util/LinkedHashMap;

    .line 228
    .line 229
    iget-object v13, v9, Lq4/e;->h:Ljava/util/LinkedHashMap;

    .line 230
    .line 231
    iget-object v14, v9, Lq4/e;->a:Lq4/j;

    .line 232
    .line 233
    if-eqz v11, :cond_49

    .line 234
    .line 235
    new-instance v11, Lha/j2;

    .line 236
    .line 237
    invoke-direct {v11, v2}, Lha/j2;-><init>(I)V

    .line 238
    .line 239
    .line 240
    iget-object v14, v14, Lq4/j;->c:Lx4/u;

    .line 241
    .line 242
    iget-object v15, v9, Lq4/e;->g:Lu4/c;

    .line 243
    .line 244
    if-nez v15, :cond_46

    .line 245
    .line 246
    new-instance v15, Lu4/c;

    .line 247
    .line 248
    iget v2, v9, Lq4/e;->c:I

    .line 249
    .line 250
    iget-object v4, v9, Lq4/e;->d:Lq4/j;

    .line 251
    .line 252
    iget-object v4, v4, Lq4/j;->c:Lx4/u;

    .line 253
    .line 254
    iget-object v5, v9, Lq4/e;->f:Lq4/k;

    .line 255
    .line 256
    iget-object v5, v5, Lq4/k;->b:Ly4/b;

    .line 257
    .line 258
    new-instance v3, Lx4/t;

    .line 259
    .line 260
    move-object/from16 p2, v8

    .line 261
    .line 262
    iget-object v8, v9, Lq4/e;->e:Ljava/lang/String;

    .line 263
    .line 264
    invoke-direct {v3, v8}, Lx4/t;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    move-object v8, v15

    .line 268
    move-object/from16 v16, v14

    .line 269
    .line 270
    move/from16 v17, v2

    .line 271
    .line 272
    move-object/from16 v18, v4

    .line 273
    .line 274
    move-object/from16 v19, v5

    .line 275
    .line 276
    move-object/from16 v20, v3

    .line 277
    .line 278
    invoke-direct/range {v15 .. v20}, Lu4/c;-><init>(Lx4/u;ILx4/u;Ly4/e;Lx4/t;)V

    .line 279
    .line 280
    .line 281
    iput-object v8, v9, Lq4/e;->g:Lu4/c;

    .line 282
    .line 283
    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    if-eqz v3, :cond_43

    .line 296
    .line 297
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    check-cast v3, Lq4/d;

    .line 302
    .line 303
    iget v4, v3, Lq4/d;->b:I

    .line 304
    .line 305
    and-int/lit16 v5, v4, 0x400

    .line 306
    .line 307
    iget-object v8, v3, Lq4/d;->a:Lq4/i;

    .line 308
    .line 309
    iget-object v8, v8, Lq4/i;->e:Lx4/q;

    .line 310
    .line 311
    if-nez v5, :cond_9

    .line 312
    .line 313
    and-int/lit16 v5, v4, 0x100

    .line 314
    .line 315
    if-eqz v5, :cond_a

    .line 316
    .line 317
    :cond_9
    move-object/from16 v16, v2

    .line 318
    .line 319
    move-object/from16 v26, v3

    .line 320
    .line 321
    move v3, v4

    .line 322
    move-object/from16 v17, v6

    .line 323
    .line 324
    move-object/from16 v20, v7

    .line 325
    .line 326
    move-object v4, v8

    .line 327
    move-object/from16 v25, v9

    .line 328
    .line 329
    move-object/from16 v23, v10

    .line 330
    .line 331
    move-object/from16 v22, v11

    .line 332
    .line 333
    move-object/from16 v24, v13

    .line 334
    .line 335
    const/4 v5, 0x1

    .line 336
    const/4 v13, 0x0

    .line 337
    goto/16 :goto_2d

    .line 338
    .line 339
    :cond_a
    new-instance v5, Ls4/a;

    .line 340
    .line 341
    iget-object v12, v3, Lq4/d;->c:Lq4/b;

    .line 342
    .line 343
    iget-boolean v14, v12, Lq4/b;->d:Z

    .line 344
    .line 345
    if-nez v14, :cond_b

    .line 346
    .line 347
    invoke-virtual {v12}, Lq4/b;->f()V

    .line 348
    .line 349
    .line 350
    :cond_b
    iget-object v14, v12, Lq4/b;->b:Ljava/util/ArrayList;

    .line 351
    .line 352
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 353
    .line 354
    .line 355
    move-result-object v15

    .line 356
    move-object/from16 v16, v2

    .line 357
    .line 358
    const/4 v2, 0x0

    .line 359
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 360
    .line 361
    .line 362
    move-result v17

    .line 363
    if-eqz v17, :cond_11

    .line 364
    .line 365
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v17

    .line 369
    move-object/from16 v0, v17

    .line 370
    .line 371
    check-cast v0, Lq4/g;

    .line 372
    .line 373
    move-object/from16 v17, v6

    .line 374
    .line 375
    iget-object v6, v0, Lq4/g;->a:Ljava/util/ArrayList;

    .line 376
    .line 377
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 378
    .line 379
    .line 380
    move-result v6

    .line 381
    if-eqz v6, :cond_c

    .line 382
    .line 383
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    .line 384
    .line 385
    .line 386
    move-object/from16 v20, v7

    .line 387
    .line 388
    move-object/from16 v18, v15

    .line 389
    .line 390
    goto :goto_b

    .line 391
    :cond_c
    move-object/from16 v18, v15

    .line 392
    .line 393
    const/4 v6, 0x0

    .line 394
    :goto_7
    iget-object v15, v0, Lq4/g;->d:Ljava/util/List;

    .line 395
    .line 396
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 397
    .line 398
    .line 399
    move-result v15

    .line 400
    if-ge v6, v15, :cond_e

    .line 401
    .line 402
    :goto_8
    iget-object v15, v0, Lq4/g;->d:Ljava/util/List;

    .line 403
    .line 404
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v15

    .line 408
    check-cast v15, Lq4/g;

    .line 409
    .line 410
    iget-object v15, v15, Lq4/g;->a:Ljava/util/ArrayList;

    .line 411
    .line 412
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 413
    .line 414
    .line 415
    move-result v15

    .line 416
    if-eqz v15, :cond_d

    .line 417
    .line 418
    iget-object v15, v0, Lq4/g;->d:Ljava/util/List;

    .line 419
    .line 420
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v19

    .line 424
    move-object/from16 v20, v7

    .line 425
    .line 426
    move-object/from16 v7, v19

    .line 427
    .line 428
    check-cast v7, Lq4/g;

    .line 429
    .line 430
    iget-object v7, v7, Lq4/g;->e:Lq4/g;

    .line 431
    .line 432
    invoke-interface {v15, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-object/from16 v7, v20

    .line 436
    .line 437
    goto :goto_8

    .line 438
    :cond_d
    move-object/from16 v20, v7

    .line 439
    .line 440
    const/4 v7, 0x1

    .line 441
    add-int/2addr v6, v7

    .line 442
    move-object/from16 v7, v20

    .line 443
    .line 444
    goto :goto_7

    .line 445
    :cond_e
    move-object/from16 v20, v7

    .line 446
    .line 447
    :goto_9
    iget-object v6, v0, Lq4/g;->e:Lq4/g;

    .line 448
    .line 449
    if-eqz v6, :cond_f

    .line 450
    .line 451
    iget-object v6, v6, Lq4/g;->a:Ljava/util/ArrayList;

    .line 452
    .line 453
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 454
    .line 455
    .line 456
    move-result v6

    .line 457
    if-eqz v6, :cond_f

    .line 458
    .line 459
    iget-object v6, v0, Lq4/g;->e:Lq4/g;

    .line 460
    .line 461
    iget-object v6, v6, Lq4/g;->e:Lq4/g;

    .line 462
    .line 463
    iput-object v6, v0, Lq4/g;->e:Lq4/g;

    .line 464
    .line 465
    goto :goto_9

    .line 466
    :cond_f
    :goto_a
    iget-object v6, v0, Lq4/g;->f:Lq4/g;

    .line 467
    .line 468
    if-eqz v6, :cond_10

    .line 469
    .line 470
    iget-object v6, v6, Lq4/g;->a:Ljava/util/ArrayList;

    .line 471
    .line 472
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 473
    .line 474
    .line 475
    move-result v6

    .line 476
    if-eqz v6, :cond_10

    .line 477
    .line 478
    iget-object v6, v0, Lq4/g;->f:Lq4/g;

    .line 479
    .line 480
    iget-object v6, v6, Lq4/g;->e:Lq4/g;

    .line 481
    .line 482
    iput-object v6, v0, Lq4/g;->f:Lq4/g;

    .line 483
    .line 484
    goto :goto_a

    .line 485
    :cond_10
    const/4 v6, 0x1

    .line 486
    add-int/lit8 v7, v2, 0x1

    .line 487
    .line 488
    iput v2, v0, Lq4/g;->g:I

    .line 489
    .line 490
    move v2, v7

    .line 491
    :goto_b
    move-object/from16 v0, p1

    .line 492
    .line 493
    move-object/from16 v6, v17

    .line 494
    .line 495
    move-object/from16 v15, v18

    .line 496
    .line 497
    move-object/from16 v7, v20

    .line 498
    .line 499
    goto/16 :goto_6

    .line 500
    .line 501
    :cond_11
    move-object/from16 v17, v6

    .line 502
    .line 503
    move-object/from16 v20, v7

    .line 504
    .line 505
    new-instance v0, Lw4/b;

    .line 506
    .line 507
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 508
    .line 509
    .line 510
    move-result v2

    .line 511
    invoke-direct {v0, v2}, Lw4/b;-><init>(I)V

    .line 512
    .line 513
    .line 514
    const/4 v2, 0x0

    .line 515
    :goto_c
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 516
    .line 517
    .line 518
    move-result v6

    .line 519
    if-ge v2, v6, :cond_18

    .line 520
    .line 521
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v6

    .line 525
    check-cast v6, Lq4/g;

    .line 526
    .line 527
    new-instance v7, Lw4/g;

    .line 528
    .line 529
    iget-object v15, v6, Lq4/g;->a:Ljava/util/ArrayList;

    .line 530
    .line 531
    move-object/from16 v22, v14

    .line 532
    .line 533
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 534
    .line 535
    .line 536
    move-result v14

    .line 537
    invoke-direct {v7, v14}, Lw4/g;-><init>(I)V

    .line 538
    .line 539
    .line 540
    const/4 v14, 0x0

    .line 541
    :goto_d
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 542
    .line 543
    .line 544
    move-result v1

    .line 545
    if-ge v14, v1, :cond_12

    .line 546
    .line 547
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    check-cast v1, Lw4/f;

    .line 552
    .line 553
    invoke-virtual {v7, v14, v1}, Lb5/c;->e(ILjava/lang/Object;)V

    .line 554
    .line 555
    .line 556
    const/4 v1, 0x1

    .line 557
    add-int/2addr v14, v1

    .line 558
    goto :goto_d

    .line 559
    :cond_12
    const/4 v1, 0x0

    .line 560
    iput-boolean v1, v7, Lb5/f;->a:Z

    .line 561
    .line 562
    new-instance v1, Lb5/e;

    .line 563
    .line 564
    const/4 v14, 0x4

    .line 565
    invoke-direct {v1, v14}, Lb5/e;-><init>(I)V

    .line 566
    .line 567
    .line 568
    iget-object v14, v6, Lq4/g;->d:Ljava/util/List;

    .line 569
    .line 570
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 571
    .line 572
    .line 573
    move-result-object v14

    .line 574
    :goto_e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 575
    .line 576
    .line 577
    move-result v15

    .line 578
    if-eqz v15, :cond_13

    .line 579
    .line 580
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object v15

    .line 584
    check-cast v15, Lq4/g;

    .line 585
    .line 586
    iget v15, v15, Lq4/g;->g:I

    .line 587
    .line 588
    invoke-virtual {v1, v15}, Lb5/e;->d(I)V

    .line 589
    .line 590
    .line 591
    goto :goto_e

    .line 592
    :cond_13
    iget-object v14, v6, Lq4/g;->e:Lq4/g;

    .line 593
    .line 594
    if-eqz v14, :cond_14

    .line 595
    .line 596
    iget v14, v14, Lq4/g;->g:I

    .line 597
    .line 598
    invoke-virtual {v1, v14}, Lb5/e;->d(I)V

    .line 599
    .line 600
    .line 601
    goto :goto_f

    .line 602
    :cond_14
    const/4 v14, -0x1

    .line 603
    :goto_f
    iget-object v15, v6, Lq4/g;->f:Lq4/g;

    .line 604
    .line 605
    if-eqz v15, :cond_15

    .line 606
    .line 607
    iget v15, v15, Lq4/g;->g:I

    .line 608
    .line 609
    invoke-virtual {v1, v15}, Lb5/e;->d(I)V

    .line 610
    .line 611
    .line 612
    :cond_15
    const/4 v15, 0x0

    .line 613
    iput-boolean v15, v1, Lb5/f;->a:Z

    .line 614
    .line 615
    new-instance v15, Lw4/a;

    .line 616
    .line 617
    iget v6, v6, Lq4/g;->g:I

    .line 618
    .line 619
    invoke-direct {v15, v6, v7, v1, v14}, Lw4/a;-><init>(ILw4/g;Lb5/e;I)V

    .line 620
    .line 621
    .line 622
    iget-object v1, v0, Lb5/c;->b:[Ljava/lang/Object;

    .line 623
    .line 624
    aget-object v1, v1, v2

    .line 625
    .line 626
    check-cast v1, Lw4/a;

    .line 627
    .line 628
    invoke-virtual {v0, v2, v15}, Lb5/c;->e(ILjava/lang/Object;)V

    .line 629
    .line 630
    .line 631
    iget-object v6, v0, Lw4/b;->c:Lb5/e;

    .line 632
    .line 633
    if-eqz v1, :cond_16

    .line 634
    .line 635
    iget v1, v1, Lw4/a;->a:I

    .line 636
    .line 637
    const/4 v7, -0x1

    .line 638
    invoke-virtual {v6, v1, v7}, Lb5/e;->f(II)V

    .line 639
    .line 640
    .line 641
    goto :goto_10

    .line 642
    :cond_16
    const/4 v7, -0x1

    .line 643
    :goto_10
    iget v1, v6, Lb5/e;->c:I

    .line 644
    .line 645
    const/4 v14, 0x0

    .line 646
    :goto_11
    iget v7, v15, Lw4/a;->a:I

    .line 647
    .line 648
    move-object/from16 v19, v15

    .line 649
    .line 650
    sub-int v15, v7, v1

    .line 651
    .line 652
    if-gt v14, v15, :cond_17

    .line 653
    .line 654
    const/4 v15, -0x1

    .line 655
    invoke-virtual {v6, v15}, Lb5/e;->d(I)V

    .line 656
    .line 657
    .line 658
    const/16 v18, 0x1

    .line 659
    .line 660
    add-int/lit8 v14, v14, 0x1

    .line 661
    .line 662
    move-object/from16 v15, v19

    .line 663
    .line 664
    goto :goto_11

    .line 665
    :cond_17
    const/4 v15, -0x1

    .line 666
    const/16 v18, 0x1

    .line 667
    .line 668
    invoke-virtual {v6, v7, v2}, Lb5/e;->f(II)V

    .line 669
    .line 670
    .line 671
    iput v15, v0, Lw4/b;->d:I

    .line 672
    .line 673
    add-int/lit8 v2, v2, 0x1

    .line 674
    .line 675
    move-object/from16 v1, p0

    .line 676
    .line 677
    move-object/from16 v14, v22

    .line 678
    .line 679
    goto/16 :goto_c

    .line 680
    .line 681
    :cond_18
    invoke-direct {v5, v0}, Ls4/a;-><init>(Lw4/b;)V

    .line 682
    .line 683
    .line 684
    iget-object v0, v12, Lq4/b;->f:Ljava/util/ArrayList;

    .line 685
    .line 686
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    const/4 v1, 0x0

    .line 691
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 692
    .line 693
    .line 694
    move-result v2

    .line 695
    if-eqz v2, :cond_19

    .line 696
    .line 697
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v2

    .line 701
    check-cast v2, Lq4/h;

    .line 702
    .line 703
    iget-object v2, v2, Lq4/h;->b:Lq4/j;

    .line 704
    .line 705
    iget-object v2, v2, Lq4/j;->b:Ly4/c;

    .line 706
    .line 707
    invoke-virtual {v2}, Ly4/c;->c()I

    .line 708
    .line 709
    .line 710
    move-result v2

    .line 711
    add-int/2addr v1, v2

    .line 712
    goto :goto_12

    .line 713
    :cond_19
    new-instance v0, Ll6/f;

    .line 714
    .line 715
    invoke-direct {v0, v5, v1, v11}, Ll6/f;-><init>(Ls4/a;ILha/j2;)V

    .line 716
    .line 717
    .line 718
    iget-object v1, v5, Ls4/a;->b:Ljava/lang/Object;

    .line 719
    .line 720
    check-cast v1, Lw4/b;

    .line 721
    .line 722
    iget-object v2, v1, Lb5/c;->b:[Ljava/lang/Object;

    .line 723
    .line 724
    array-length v2, v2

    .line 725
    invoke-virtual {v1}, Lw4/b;->g()I

    .line 726
    .line 727
    .line 728
    move-result v6

    .line 729
    add-int/lit8 v6, v6, 0x1f

    .line 730
    .line 731
    shr-int/lit8 v6, v6, 0x5

    .line 732
    .line 733
    new-array v7, v6, [I

    .line 734
    .line 735
    new-array v12, v6, [I

    .line 736
    .line 737
    const/4 v14, 0x0

    .line 738
    :goto_13
    if-ge v14, v2, :cond_1a

    .line 739
    .line 740
    invoke-virtual {v1, v14}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v15

    .line 744
    check-cast v15, Lw4/a;

    .line 745
    .line 746
    iget v15, v15, Lw4/a;->a:I

    .line 747
    .line 748
    shr-int/lit8 v22, v15, 0x5

    .line 749
    .line 750
    and-int/lit8 v15, v15, 0x1f

    .line 751
    .line 752
    const/16 v21, 0x1

    .line 753
    .line 754
    shl-int v15, v21, v15

    .line 755
    .line 756
    aget v23, v7, v22

    .line 757
    .line 758
    or-int v15, v23, v15

    .line 759
    .line 760
    aput v15, v7, v22

    .line 761
    .line 762
    add-int/lit8 v14, v14, 0x1

    .line 763
    .line 764
    goto :goto_13

    .line 765
    :cond_1a
    new-array v14, v2, [I

    .line 766
    .line 767
    move-object/from16 v23, v10

    .line 768
    .line 769
    move-object/from16 v22, v11

    .line 770
    .line 771
    const/4 v10, -0x1

    .line 772
    const/4 v11, 0x0

    .line 773
    const/4 v15, 0x0

    .line 774
    :goto_14
    if-eq v11, v10, :cond_36

    .line 775
    .line 776
    :goto_15
    iget-object v10, v5, Ls4/a;->d:Ljava/lang/Object;

    .line 777
    .line 778
    check-cast v10, Lb5/e;

    .line 779
    .line 780
    if-nez v10, :cond_24

    .line 781
    .line 782
    invoke-virtual {v1}, Lw4/b;->g()I

    .line 783
    .line 784
    .line 785
    move-result v10

    .line 786
    move-object/from16 v24, v13

    .line 787
    .line 788
    new-array v13, v10, [Lb5/e;

    .line 789
    .line 790
    move-object/from16 v25, v9

    .line 791
    .line 792
    new-instance v9, Lb5/e;

    .line 793
    .line 794
    move-object/from16 v26, v3

    .line 795
    .line 796
    const/16 v3, 0xa

    .line 797
    .line 798
    invoke-direct {v9, v3}, Lb5/e;-><init>(I)V

    .line 799
    .line 800
    .line 801
    iget-object v3, v1, Lb5/c;->b:[Ljava/lang/Object;

    .line 802
    .line 803
    array-length v3, v3

    .line 804
    move/from16 v28, v4

    .line 805
    .line 806
    const/4 v4, 0x0

    .line 807
    :goto_16
    if-ge v4, v3, :cond_1e

    .line 808
    .line 809
    invoke-virtual {v1, v4}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v29

    .line 813
    move/from16 v30, v3

    .line 814
    .line 815
    move-object/from16 v3, v29

    .line 816
    .line 817
    check-cast v3, Lw4/a;

    .line 818
    .line 819
    move-object/from16 v29, v8

    .line 820
    .line 821
    iget-object v8, v3, Lw4/a;->c:Lb5/e;

    .line 822
    .line 823
    move-object/from16 v31, v0

    .line 824
    .line 825
    iget v0, v8, Lb5/e;->c:I

    .line 826
    .line 827
    iget v3, v3, Lw4/a;->a:I

    .line 828
    .line 829
    if-nez v0, :cond_1c

    .line 830
    .line 831
    invoke-virtual {v9, v3}, Lb5/e;->d(I)V

    .line 832
    .line 833
    .line 834
    move/from16 v32, v2

    .line 835
    .line 836
    :cond_1b
    const/4 v0, 0x1

    .line 837
    const/16 v8, 0xa

    .line 838
    .line 839
    goto :goto_19

    .line 840
    :cond_1c
    move/from16 v32, v2

    .line 841
    .line 842
    const/4 v2, 0x0

    .line 843
    :goto_17
    if-ge v2, v0, :cond_1b

    .line 844
    .line 845
    invoke-virtual {v8, v2}, Lb5/e;->e(I)I

    .line 846
    .line 847
    .line 848
    move-result v33

    .line 849
    aget-object v34, v13, v33

    .line 850
    .line 851
    move/from16 v35, v0

    .line 852
    .line 853
    if-nez v34, :cond_1d

    .line 854
    .line 855
    new-instance v0, Lb5/e;

    .line 856
    .line 857
    move-object/from16 v36, v8

    .line 858
    .line 859
    const/16 v8, 0xa

    .line 860
    .line 861
    invoke-direct {v0, v8}, Lb5/e;-><init>(I)V

    .line 862
    .line 863
    .line 864
    aput-object v0, v13, v33

    .line 865
    .line 866
    goto :goto_18

    .line 867
    :cond_1d
    move-object/from16 v36, v8

    .line 868
    .line 869
    const/16 v8, 0xa

    .line 870
    .line 871
    move-object/from16 v0, v34

    .line 872
    .line 873
    :goto_18
    invoke-virtual {v0, v3}, Lb5/e;->d(I)V

    .line 874
    .line 875
    .line 876
    const/4 v0, 0x1

    .line 877
    add-int/2addr v2, v0

    .line 878
    move/from16 v0, v35

    .line 879
    .line 880
    move-object/from16 v8, v36

    .line 881
    .line 882
    goto :goto_17

    .line 883
    :goto_19
    add-int/2addr v4, v0

    .line 884
    move-object/from16 v8, v29

    .line 885
    .line 886
    move/from16 v3, v30

    .line 887
    .line 888
    move-object/from16 v0, v31

    .line 889
    .line 890
    move/from16 v2, v32

    .line 891
    .line 892
    goto :goto_16

    .line 893
    :cond_1e
    move-object/from16 v31, v0

    .line 894
    .line 895
    move/from16 v32, v2

    .line 896
    .line 897
    move-object/from16 v29, v8

    .line 898
    .line 899
    const/4 v0, 0x0

    .line 900
    :goto_1a
    if-ge v0, v10, :cond_21

    .line 901
    .line 902
    aget-object v2, v13, v0

    .line 903
    .line 904
    if-eqz v2, :cond_20

    .line 905
    .line 906
    invoke-virtual {v2}, Lb5/f;->c()V

    .line 907
    .line 908
    .line 909
    iget-boolean v3, v2, Lb5/e;->d:Z

    .line 910
    .line 911
    if-nez v3, :cond_1f

    .line 912
    .line 913
    iget-object v3, v2, Lb5/e;->b:[I

    .line 914
    .line 915
    iget v4, v2, Lb5/e;->c:I

    .line 916
    .line 917
    const/4 v8, 0x0

    .line 918
    invoke-static {v3, v8, v4}, Ljava/util/Arrays;->sort([III)V

    .line 919
    .line 920
    .line 921
    const/4 v3, 0x1

    .line 922
    iput-boolean v3, v2, Lb5/e;->d:Z

    .line 923
    .line 924
    goto :goto_1b

    .line 925
    :cond_1f
    const/4 v3, 0x1

    .line 926
    const/4 v8, 0x0

    .line 927
    :goto_1b
    iput-boolean v8, v2, Lb5/f;->a:Z

    .line 928
    .line 929
    goto :goto_1c

    .line 930
    :cond_20
    const/4 v3, 0x1

    .line 931
    const/4 v8, 0x0

    .line 932
    :goto_1c
    add-int/2addr v0, v3

    .line 933
    goto :goto_1a

    .line 934
    :cond_21
    const/4 v3, 0x1

    .line 935
    const/4 v8, 0x0

    .line 936
    invoke-virtual {v9}, Lb5/f;->c()V

    .line 937
    .line 938
    .line 939
    iget-boolean v0, v9, Lb5/e;->d:Z

    .line 940
    .line 941
    if-nez v0, :cond_22

    .line 942
    .line 943
    iget-object v0, v9, Lb5/e;->b:[I

    .line 944
    .line 945
    iget v2, v9, Lb5/e;->c:I

    .line 946
    .line 947
    invoke-static {v0, v8, v2}, Ljava/util/Arrays;->sort([III)V

    .line 948
    .line 949
    .line 950
    iput-boolean v3, v9, Lb5/e;->d:Z

    .line 951
    .line 952
    :cond_22
    iput-boolean v8, v9, Lb5/f;->a:Z

    .line 953
    .line 954
    aget-object v0, v13, v8

    .line 955
    .line 956
    if-nez v0, :cond_23

    .line 957
    .line 958
    sget-object v0, Lb5/e;->e:Lb5/e;

    .line 959
    .line 960
    aput-object v0, v13, v8

    .line 961
    .line 962
    :cond_23
    iput-object v13, v5, Ls4/a;->c:Ljava/lang/Object;

    .line 963
    .line 964
    iput-object v9, v5, Ls4/a;->d:Ljava/lang/Object;

    .line 965
    .line 966
    goto :goto_1d

    .line 967
    :cond_24
    move-object/from16 v31, v0

    .line 968
    .line 969
    move/from16 v32, v2

    .line 970
    .line 971
    move-object/from16 v26, v3

    .line 972
    .line 973
    move/from16 v28, v4

    .line 974
    .line 975
    move-object/from16 v29, v8

    .line 976
    .line 977
    move-object/from16 v25, v9

    .line 978
    .line 979
    move-object/from16 v24, v13

    .line 980
    .line 981
    :goto_1d
    iget-object v0, v5, Ls4/a;->c:Ljava/lang/Object;

    .line 982
    .line 983
    check-cast v0, [Lb5/e;

    .line 984
    .line 985
    aget-object v0, v0, v11

    .line 986
    .line 987
    if-eqz v0, :cond_35

    .line 988
    .line 989
    iget v2, v0, Lb5/e;->c:I

    .line 990
    .line 991
    const/4 v3, 0x0

    .line 992
    :goto_1e
    if-ge v3, v2, :cond_25

    .line 993
    .line 994
    invoke-virtual {v0, v3}, Lb5/e;->e(I)I

    .line 995
    .line 996
    .line 997
    move-result v4

    .line 998
    invoke-static {v4, v12}, Lq4/a;->j(I[I)Z

    .line 999
    .line 1000
    .line 1001
    move-result v8

    .line 1002
    if-eqz v8, :cond_26

    .line 1003
    .line 1004
    :cond_25
    const/4 v8, 0x1

    .line 1005
    goto :goto_20

    .line 1006
    :cond_26
    invoke-static {v4, v7}, Lq4/a;->j(I[I)Z

    .line 1007
    .line 1008
    .line 1009
    move-result v8

    .line 1010
    if-nez v8, :cond_28

    .line 1011
    .line 1012
    :cond_27
    const/4 v8, 0x1

    .line 1013
    goto :goto_1f

    .line 1014
    :cond_28
    invoke-virtual {v1, v4}, Lw4/b;->h(I)Lw4/a;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v8

    .line 1018
    iget v8, v8, Lw4/a;->d:I

    .line 1019
    .line 1020
    if-ne v8, v11, :cond_27

    .line 1021
    .line 1022
    shr-int/lit8 v0, v4, 0x5

    .line 1023
    .line 1024
    and-int/lit8 v2, v4, 0x1f

    .line 1025
    .line 1026
    const/4 v8, 0x1

    .line 1027
    shl-int v2, v8, v2

    .line 1028
    .line 1029
    aget v3, v12, v0

    .line 1030
    .line 1031
    or-int/2addr v2, v3

    .line 1032
    aput v2, v12, v0

    .line 1033
    .line 1034
    move v11, v4

    .line 1035
    move-object/from16 v13, v24

    .line 1036
    .line 1037
    move-object/from16 v9, v25

    .line 1038
    .line 1039
    move-object/from16 v3, v26

    .line 1040
    .line 1041
    move/from16 v4, v28

    .line 1042
    .line 1043
    move-object/from16 v8, v29

    .line 1044
    .line 1045
    move-object/from16 v0, v31

    .line 1046
    .line 1047
    move/from16 v2, v32

    .line 1048
    .line 1049
    goto/16 :goto_15

    .line 1050
    .line 1051
    :goto_1f
    add-int/2addr v3, v8

    .line 1052
    goto :goto_1e

    .line 1053
    :goto_20
    const/4 v0, -0x1

    .line 1054
    :goto_21
    if-eq v11, v0, :cond_31

    .line 1055
    .line 1056
    shr-int/lit8 v2, v11, 0x5

    .line 1057
    .line 1058
    and-int/lit8 v3, v11, 0x1f

    .line 1059
    .line 1060
    shl-int v3, v8, v3

    .line 1061
    .line 1062
    aget v4, v7, v2

    .line 1063
    .line 1064
    xor-int/2addr v3, v0

    .line 1065
    and-int v0, v4, v3

    .line 1066
    .line 1067
    aput v0, v7, v2

    .line 1068
    .line 1069
    aget v0, v12, v2

    .line 1070
    .line 1071
    and-int/2addr v0, v3

    .line 1072
    aput v0, v12, v2

    .line 1073
    .line 1074
    aput v11, v14, v15

    .line 1075
    .line 1076
    add-int/2addr v15, v8

    .line 1077
    invoke-virtual {v1, v11}, Lw4/b;->h(I)Lw4/a;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v0

    .line 1081
    iget-object v2, v0, Lw4/a;->c:Lb5/e;

    .line 1082
    .line 1083
    iget v3, v2, Lb5/e;->c:I

    .line 1084
    .line 1085
    iget v0, v0, Lw4/a;->d:I

    .line 1086
    .line 1087
    if-eqz v3, :cond_2b

    .line 1088
    .line 1089
    if-eq v3, v8, :cond_2a

    .line 1090
    .line 1091
    const/4 v3, -0x1

    .line 1092
    if-eq v0, v3, :cond_29

    .line 1093
    .line 1094
    invoke-virtual {v1, v0}, Lw4/b;->h(I)Lw4/a;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v4

    .line 1098
    goto :goto_22

    .line 1099
    :cond_29
    const/4 v4, 0x0

    .line 1100
    invoke-virtual {v2, v4}, Lb5/e;->e(I)I

    .line 1101
    .line 1102
    .line 1103
    move-result v8

    .line 1104
    invoke-virtual {v1, v8}, Lw4/b;->h(I)Lw4/a;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v8

    .line 1108
    move-object v4, v8

    .line 1109
    goto :goto_22

    .line 1110
    :cond_2a
    const/4 v3, -0x1

    .line 1111
    const/4 v4, 0x0

    .line 1112
    invoke-virtual {v2, v4}, Lb5/e;->e(I)I

    .line 1113
    .line 1114
    .line 1115
    move-result v8

    .line 1116
    invoke-virtual {v1, v8}, Lw4/b;->h(I)Lw4/a;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v4

    .line 1120
    goto :goto_22

    .line 1121
    :cond_2b
    const/4 v3, -0x1

    .line 1122
    const/4 v4, 0x0

    .line 1123
    :goto_22
    if-nez v4, :cond_2c

    .line 1124
    .line 1125
    goto :goto_25

    .line 1126
    :cond_2c
    iget v4, v4, Lw4/a;->a:I

    .line 1127
    .line 1128
    invoke-static {v4, v7}, Lq4/a;->j(I[I)Z

    .line 1129
    .line 1130
    .line 1131
    move-result v8

    .line 1132
    if-eqz v8, :cond_2d

    .line 1133
    .line 1134
    move v11, v4

    .line 1135
    goto :goto_24

    .line 1136
    :cond_2d
    if-eq v0, v4, :cond_2e

    .line 1137
    .line 1138
    if-ltz v0, :cond_2e

    .line 1139
    .line 1140
    invoke-static {v0, v7}, Lq4/a;->j(I[I)Z

    .line 1141
    .line 1142
    .line 1143
    move-result v4

    .line 1144
    if-eqz v4, :cond_2e

    .line 1145
    .line 1146
    move v11, v0

    .line 1147
    goto :goto_24

    .line 1148
    :cond_2e
    iget v0, v2, Lb5/e;->c:I

    .line 1149
    .line 1150
    const/4 v4, 0x0

    .line 1151
    :goto_23
    if-ge v4, v0, :cond_30

    .line 1152
    .line 1153
    invoke-virtual {v2, v4}, Lb5/e;->e(I)I

    .line 1154
    .line 1155
    .line 1156
    move-result v8

    .line 1157
    invoke-static {v8, v7}, Lq4/a;->j(I[I)Z

    .line 1158
    .line 1159
    .line 1160
    move-result v9

    .line 1161
    if-eqz v9, :cond_2f

    .line 1162
    .line 1163
    move v11, v8

    .line 1164
    goto :goto_24

    .line 1165
    :cond_2f
    const/4 v8, 0x1

    .line 1166
    add-int/2addr v4, v8

    .line 1167
    goto :goto_23

    .line 1168
    :cond_30
    const/4 v11, -0x1

    .line 1169
    :goto_24
    const/4 v0, -0x1

    .line 1170
    const/4 v8, 0x1

    .line 1171
    goto :goto_21

    .line 1172
    :cond_31
    const/4 v3, -0x1

    .line 1173
    :goto_25
    const/4 v0, 0x0

    .line 1174
    :goto_26
    if-ge v0, v6, :cond_34

    .line 1175
    .line 1176
    aget v2, v7, v0

    .line 1177
    .line 1178
    if-eqz v2, :cond_33

    .line 1179
    .line 1180
    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 1181
    .line 1182
    .line 1183
    move-result v2

    .line 1184
    const/16 v4, 0x20

    .line 1185
    .line 1186
    if-ne v2, v4, :cond_32

    .line 1187
    .line 1188
    const/4 v2, -0x1

    .line 1189
    :cond_32
    if-ltz v2, :cond_33

    .line 1190
    .line 1191
    shl-int/lit8 v0, v0, 0x5

    .line 1192
    .line 1193
    add-int/2addr v0, v2

    .line 1194
    move v11, v0

    .line 1195
    goto :goto_27

    .line 1196
    :cond_33
    const/4 v2, 0x1

    .line 1197
    add-int/2addr v0, v2

    .line 1198
    goto :goto_26

    .line 1199
    :cond_34
    const/4 v11, -0x1

    .line 1200
    :goto_27
    move-object/from16 v13, v24

    .line 1201
    .line 1202
    move-object/from16 v9, v25

    .line 1203
    .line 1204
    move-object/from16 v3, v26

    .line 1205
    .line 1206
    move/from16 v4, v28

    .line 1207
    .line 1208
    move-object/from16 v8, v29

    .line 1209
    .line 1210
    move-object/from16 v0, v31

    .line 1211
    .line 1212
    move/from16 v2, v32

    .line 1213
    .line 1214
    const/4 v10, -0x1

    .line 1215
    goto/16 :goto_14

    .line 1216
    .line 1217
    :cond_35
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1218
    .line 1219
    invoke-static {v11}, Lqf/c;->e0(I)Ljava/lang/String;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v1

    .line 1223
    const-string v2, "no such block: "

    .line 1224
    .line 1225
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v1

    .line 1229
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1230
    .line 1231
    .line 1232
    throw v0

    .line 1233
    :cond_36
    move-object/from16 v31, v0

    .line 1234
    .line 1235
    move v0, v2

    .line 1236
    move-object/from16 v26, v3

    .line 1237
    .line 1238
    move/from16 v28, v4

    .line 1239
    .line 1240
    move-object/from16 v29, v8

    .line 1241
    .line 1242
    move-object/from16 v25, v9

    .line 1243
    .line 1244
    move-object/from16 v24, v13

    .line 1245
    .line 1246
    const/4 v3, -0x1

    .line 1247
    if-ne v15, v0, :cond_41

    .line 1248
    .line 1249
    move-object/from16 v2, v31

    .line 1250
    .line 1251
    iput-object v14, v2, Ll6/f;->h:Ljava/lang/Object;

    .line 1252
    .line 1253
    const/4 v4, 0x0

    .line 1254
    :goto_28
    iget-object v6, v2, Ll6/f;->f:Ljava/lang/Object;

    .line 1255
    .line 1256
    check-cast v6, Lkf/d;

    .line 1257
    .line 1258
    iget-object v7, v2, Ll6/f;->e:Ljava/lang/Object;

    .line 1259
    .line 1260
    check-cast v7, Ls4/a;

    .line 1261
    .line 1262
    if-ge v4, v0, :cond_3e

    .line 1263
    .line 1264
    const/4 v8, 0x1

    .line 1265
    add-int/lit8 v9, v4, 0x1

    .line 1266
    .line 1267
    if-ne v9, v0, :cond_37

    .line 1268
    .line 1269
    const/4 v8, -0x1

    .line 1270
    goto :goto_29

    .line 1271
    :cond_37
    aget v8, v14, v9

    .line 1272
    .line 1273
    :goto_29
    aget v4, v14, v4

    .line 1274
    .line 1275
    invoke-virtual {v1, v4}, Lw4/b;->h(I)Lw4/a;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v4

    .line 1279
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1280
    .line 1281
    .line 1282
    iget-object v10, v7, Ls4/a;->b:Ljava/lang/Object;

    .line 1283
    .line 1284
    check-cast v10, [Ls4/f;

    .line 1285
    .line 1286
    iget v11, v4, Lw4/a;->a:I

    .line 1287
    .line 1288
    aget-object v12, v10, v11

    .line 1289
    .line 1290
    iget-object v13, v6, Lkf/d;->c:Ljava/lang/Object;

    .line 1291
    .line 1292
    check-cast v13, Ls4/r;

    .line 1293
    .line 1294
    invoke-virtual {v13, v12}, Ls4/r;->a(Ls4/h;)V

    .line 1295
    .line 1296
    .line 1297
    iget-object v12, v7, Ls4/a;->c:Ljava/lang/Object;

    .line 1298
    .line 1299
    check-cast v12, [Ls4/f;

    .line 1300
    .line 1301
    aget-object v12, v12, v11

    .line 1302
    .line 1303
    iget-object v13, v2, Ll6/f;->g:Ljava/lang/Object;

    .line 1304
    .line 1305
    check-cast v13, La2/w0;

    .line 1306
    .line 1307
    iput-object v4, v13, La2/w0;->c:Ljava/lang/Object;

    .line 1308
    .line 1309
    iput-object v12, v13, La2/w0;->d:Ljava/lang/Object;

    .line 1310
    .line 1311
    iget-object v12, v4, Lw4/a;->b:Lw4/g;

    .line 1312
    .line 1313
    iget-object v15, v12, Lb5/c;->b:[Ljava/lang/Object;

    .line 1314
    .line 1315
    array-length v15, v15

    .line 1316
    const/4 v3, 0x0

    .line 1317
    :goto_2a
    if-ge v3, v15, :cond_38

    .line 1318
    .line 1319
    invoke-virtual {v12, v3}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v27

    .line 1323
    move/from16 v32, v0

    .line 1324
    .line 1325
    move-object/from16 v0, v27

    .line 1326
    .line 1327
    check-cast v0, Lw4/f;

    .line 1328
    .line 1329
    invoke-virtual {v0, v13}, Lw4/f;->b(Lw4/e;)V

    .line 1330
    .line 1331
    .line 1332
    const/4 v0, 0x1

    .line 1333
    add-int/2addr v3, v0

    .line 1334
    move/from16 v0, v32

    .line 1335
    .line 1336
    goto :goto_2a

    .line 1337
    :cond_38
    move/from16 v32, v0

    .line 1338
    .line 1339
    iget-object v0, v7, Ls4/a;->d:Ljava/lang/Object;

    .line 1340
    .line 1341
    check-cast v0, [Ls4/f;

    .line 1342
    .line 1343
    aget-object v0, v0, v11

    .line 1344
    .line 1345
    iget-object v3, v6, Lkf/d;->c:Ljava/lang/Object;

    .line 1346
    .line 1347
    check-cast v3, Ls4/r;

    .line 1348
    .line 1349
    invoke-virtual {v3, v0}, Ls4/r;->a(Ls4/h;)V

    .line 1350
    .line 1351
    .line 1352
    invoke-virtual {v12}, Lw4/g;->g()Lw4/f;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v0

    .line 1356
    iget v6, v4, Lw4/a;->d:I

    .line 1357
    .line 1358
    if-ltz v6, :cond_3d

    .line 1359
    .line 1360
    if-eq v6, v8, :cond_3d

    .line 1361
    .line 1362
    iget-object v7, v0, Lw4/f;->a:Lw4/n;

    .line 1363
    .line 1364
    iget v7, v7, Lw4/n;->e:I

    .line 1365
    .line 1366
    const/4 v11, 0x4

    .line 1367
    if-ne v7, v11, :cond_3b

    .line 1368
    .line 1369
    iget-object v4, v4, Lw4/a;->c:Lb5/e;

    .line 1370
    .line 1371
    iget v7, v4, Lb5/e;->c:I

    .line 1372
    .line 1373
    const/4 v12, 0x2

    .line 1374
    if-ne v7, v12, :cond_3a

    .line 1375
    .line 1376
    const/4 v13, 0x0

    .line 1377
    invoke-virtual {v4, v13}, Lb5/e;->e(I)I

    .line 1378
    .line 1379
    .line 1380
    move-result v7

    .line 1381
    if-ne v7, v6, :cond_39

    .line 1382
    .line 1383
    const/4 v15, 0x1

    .line 1384
    invoke-virtual {v4, v15}, Lb5/e;->e(I)I

    .line 1385
    .line 1386
    .line 1387
    move-result v7

    .line 1388
    :cond_39
    if-ne v7, v8, :cond_3c

    .line 1389
    .line 1390
    aget-object v0, v10, v6

    .line 1391
    .line 1392
    iget-object v4, v3, Ls4/r;->c:Ljava/util/ArrayList;

    .line 1393
    .line 1394
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1395
    .line 1396
    .line 1397
    move-result v4

    .line 1398
    sub-int/2addr v4, v12

    .line 1399
    :try_start_1
    iget-object v6, v3, Ls4/r;->c:Ljava/util/ArrayList;

    .line 1400
    .line 1401
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v6

    .line 1405
    check-cast v6, Ls4/v;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1406
    .line 1407
    iget-object v3, v3, Ls4/r;->c:Ljava/util/ArrayList;

    .line 1408
    .line 1409
    invoke-virtual {v6, v0}, Ls4/v;->o(Ls4/f;)Ls4/v;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v0

    .line 1413
    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1414
    .line 1415
    .line 1416
    goto :goto_2b

    .line 1417
    :catch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1418
    .line 1419
    const-string v1, "non-reversible instruction"

    .line 1420
    .line 1421
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1422
    .line 1423
    .line 1424
    throw v0

    .line 1425
    :catch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1426
    .line 1427
    const-string v1, "too few instructions"

    .line 1428
    .line 1429
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1430
    .line 1431
    .line 1432
    throw v0

    .line 1433
    :cond_3a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 1434
    .line 1435
    const-string v1, "block doesn\'t have exactly two successors"

    .line 1436
    .line 1437
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1438
    .line 1439
    .line 1440
    throw v0

    .line 1441
    :cond_3b
    const/4 v13, 0x0

    .line 1442
    :cond_3c
    new-instance v4, Ls4/v;

    .line 1443
    .line 1444
    sget-object v7, Ls4/k;->I:Ls4/j;

    .line 1445
    .line 1446
    sget-object v8, Lw4/l;->c:Lw4/l;

    .line 1447
    .line 1448
    aget-object v6, v10, v6

    .line 1449
    .line 1450
    iget-object v0, v0, Lw4/f;->b:Lw4/p;

    .line 1451
    .line 1452
    invoke-direct {v4, v7, v0, v8, v6}, Ls4/v;-><init>(Ls4/j;Lw4/p;Lw4/l;Ls4/f;)V

    .line 1453
    .line 1454
    .line 1455
    invoke-virtual {v3, v4}, Ls4/r;->a(Ls4/h;)V

    .line 1456
    .line 1457
    .line 1458
    goto :goto_2b

    .line 1459
    :cond_3d
    const/4 v11, 0x4

    .line 1460
    const/4 v13, 0x0

    .line 1461
    :goto_2b
    move v4, v9

    .line 1462
    move/from16 v0, v32

    .line 1463
    .line 1464
    const/4 v3, -0x1

    .line 1465
    goto/16 :goto_28

    .line 1466
    .line 1467
    :cond_3e
    const/4 v13, 0x0

    .line 1468
    new-instance v0, Ls4/a;

    .line 1469
    .line 1470
    iget-object v1, v2, Ll6/f;->h:Ljava/lang/Object;

    .line 1471
    .line 1472
    check-cast v1, [I

    .line 1473
    .line 1474
    invoke-direct {v0, v5, v1, v7}, Ls4/a;-><init>(Ls4/a;[ILs4/a;)V

    .line 1475
    .line 1476
    .line 1477
    new-instance v1, La2/w0;

    .line 1478
    .line 1479
    iget-object v2, v6, Lkf/d;->b:Ljava/lang/Object;

    .line 1480
    .line 1481
    check-cast v2, Ljava/util/ArrayList;

    .line 1482
    .line 1483
    if-eqz v2, :cond_40

    .line 1484
    .line 1485
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1486
    .line 1487
    .line 1488
    move-result v2

    .line 1489
    const/4 v3, 0x0

    .line 1490
    :goto_2c
    iget-object v4, v6, Lkf/d;->c:Ljava/lang/Object;

    .line 1491
    .line 1492
    check-cast v4, Ls4/r;

    .line 1493
    .line 1494
    if-ge v3, v2, :cond_3f

    .line 1495
    .line 1496
    iget-object v5, v6, Lkf/d;->b:Ljava/lang/Object;

    .line 1497
    .line 1498
    check-cast v5, Ljava/util/ArrayList;

    .line 1499
    .line 1500
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v5

    .line 1504
    check-cast v5, Ls4/h;

    .line 1505
    .line 1506
    invoke-virtual {v4, v5}, Ls4/r;->a(Ls4/h;)V

    .line 1507
    .line 1508
    .line 1509
    const/4 v5, 0x1

    .line 1510
    add-int/2addr v3, v5

    .line 1511
    goto :goto_2c

    .line 1512
    :cond_3f
    const/4 v3, 0x0

    .line 1513
    const/4 v5, 0x1

    .line 1514
    iput-object v3, v6, Lkf/d;->b:Ljava/lang/Object;

    .line 1515
    .line 1516
    invoke-direct {v1, v4, v0}, La2/w0;-><init>(Ls4/r;Ls4/a;)V

    .line 1517
    .line 1518
    .line 1519
    new-instance v0, Lu4/j;

    .line 1520
    .line 1521
    sget-object v2, Ly4/b;->c:Ly4/b;

    .line 1522
    .line 1523
    move/from16 v3, v28

    .line 1524
    .line 1525
    move-object/from16 v4, v29

    .line 1526
    .line 1527
    invoke-direct {v0, v4, v3, v1, v2}, Lu4/j;-><init>(Lx4/q;ILa2/w0;Ly4/b;)V

    .line 1528
    .line 1529
    .line 1530
    move-object/from16 v3, v26

    .line 1531
    .line 1532
    const/4 v2, 0x0

    .line 1533
    goto :goto_2e

    .line 1534
    :cond_40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 1535
    .line 1536
    const-string v1, "already processed"

    .line 1537
    .line 1538
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1539
    .line 1540
    .line 1541
    throw v0

    .line 1542
    :cond_41
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1543
    .line 1544
    const-string v1, "shouldn\'t happen"

    .line 1545
    .line 1546
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1547
    .line 1548
    .line 1549
    throw v0

    .line 1550
    :goto_2d
    new-instance v0, Lu4/j;

    .line 1551
    .line 1552
    sget-object v1, Ly4/b;->c:Ly4/b;

    .line 1553
    .line 1554
    const/4 v2, 0x0

    .line 1555
    invoke-direct {v0, v4, v3, v2, v1}, Lu4/j;-><init>(Lx4/q;ILa2/w0;Ly4/b;)V

    .line 1556
    .line 1557
    .line 1558
    move-object/from16 v3, v26

    .line 1559
    .line 1560
    :goto_2e
    iget v1, v3, Lq4/d;->b:I

    .line 1561
    .line 1562
    const v3, 0x1000a

    .line 1563
    .line 1564
    .line 1565
    and-int/2addr v1, v3

    .line 1566
    if-eqz v1, :cond_42

    .line 1567
    .line 1568
    move-object/from16 v9, v25

    .line 1569
    .line 1570
    iget-object v1, v9, Lq4/e;->g:Lu4/c;

    .line 1571
    .line 1572
    iget-object v1, v1, Lu4/c;->g:Lu4/b;

    .line 1573
    .line 1574
    iget-object v1, v1, Lu4/b;->i:Ljava/util/ArrayList;

    .line 1575
    .line 1576
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1577
    .line 1578
    .line 1579
    goto :goto_2f

    .line 1580
    :cond_42
    move-object/from16 v9, v25

    .line 1581
    .line 1582
    iget-object v1, v9, Lq4/e;->g:Lu4/c;

    .line 1583
    .line 1584
    iget-object v1, v1, Lu4/c;->g:Lu4/b;

    .line 1585
    .line 1586
    iget-object v1, v1, Lu4/b;->j:Ljava/util/ArrayList;

    .line 1587
    .line 1588
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1589
    .line 1590
    .line 1591
    :goto_2f
    move-object/from16 v1, p0

    .line 1592
    .line 1593
    move-object/from16 v0, p1

    .line 1594
    .line 1595
    move-object/from16 v2, v16

    .line 1596
    .line 1597
    move-object/from16 v6, v17

    .line 1598
    .line 1599
    move-object/from16 v7, v20

    .line 1600
    .line 1601
    move-object/from16 v11, v22

    .line 1602
    .line 1603
    move-object/from16 v10, v23

    .line 1604
    .line 1605
    move-object/from16 v13, v24

    .line 1606
    .line 1607
    goto/16 :goto_5

    .line 1608
    .line 1609
    :cond_43
    move-object/from16 v17, v6

    .line 1610
    .line 1611
    move-object/from16 v20, v7

    .line 1612
    .line 1613
    move-object/from16 v23, v10

    .line 1614
    .line 1615
    move-object/from16 v24, v13

    .line 1616
    .line 1617
    const/4 v2, 0x0

    .line 1618
    const/4 v5, 0x1

    .line 1619
    const/4 v13, 0x0

    .line 1620
    invoke-virtual/range {v24 .. v24}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v0

    .line 1624
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1625
    .line 1626
    .line 1627
    move-result-object v0

    .line 1628
    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1629
    .line 1630
    .line 1631
    move-result v1

    .line 1632
    if-eqz v1, :cond_47

    .line 1633
    .line 1634
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1635
    .line 1636
    .line 1637
    move-result-object v1

    .line 1638
    check-cast v1, Lq4/c;

    .line 1639
    .line 1640
    new-instance v3, Lu4/h;

    .line 1641
    .line 1642
    iget-object v4, v1, Lq4/c;->a:Lq4/f;

    .line 1643
    .line 1644
    iget-object v4, v4, Lq4/f;->c:Lx4/h;

    .line 1645
    .line 1646
    iget v1, v1, Lq4/c;->b:I

    .line 1647
    .line 1648
    invoke-direct {v3, v4, v1}, Lu4/h;-><init>(Lx4/h;I)V

    .line 1649
    .line 1650
    .line 1651
    and-int/lit8 v1, v1, 0x8

    .line 1652
    .line 1653
    if-eqz v1, :cond_45

    .line 1654
    .line 1655
    iget-object v1, v9, Lq4/e;->g:Lu4/c;

    .line 1656
    .line 1657
    sget-object v4, Lx4/k;->a:Lx4/k;

    .line 1658
    .line 1659
    iget-object v1, v1, Lu4/c;->g:Lu4/b;

    .line 1660
    .line 1661
    iget-object v6, v1, Lu4/b;->k:Lx4/c;

    .line 1662
    .line 1663
    if-nez v6, :cond_44

    .line 1664
    .line 1665
    iget-object v6, v1, Lu4/b;->f:Ljava/util/ArrayList;

    .line 1666
    .line 1667
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1668
    .line 1669
    .line 1670
    iget-object v1, v1, Lu4/b;->g:Ljava/util/HashMap;

    .line 1671
    .line 1672
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    .line 1674
    .line 1675
    goto :goto_30

    .line 1676
    :cond_44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 1677
    .line 1678
    const-string v1, "static fields already sorted"

    .line 1679
    .line 1680
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1681
    .line 1682
    .line 1683
    throw v0

    .line 1684
    :cond_45
    iget-object v1, v9, Lq4/e;->g:Lu4/c;

    .line 1685
    .line 1686
    iget-object v1, v1, Lu4/c;->g:Lu4/b;

    .line 1687
    .line 1688
    iget-object v1, v1, Lu4/b;->h:Ljava/util/ArrayList;

    .line 1689
    .line 1690
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1691
    .line 1692
    .line 1693
    goto :goto_30

    .line 1694
    :cond_46
    move-object/from16 v17, v6

    .line 1695
    .line 1696
    move-object/from16 v20, v7

    .line 1697
    .line 1698
    move-object/from16 p2, v8

    .line 1699
    .line 1700
    move-object/from16 v23, v10

    .line 1701
    .line 1702
    const/4 v2, 0x0

    .line 1703
    const/4 v5, 0x1

    .line 1704
    const/4 v13, 0x0

    .line 1705
    :cond_47
    iget-object v0, v9, Lq4/e;->g:Lu4/c;

    .line 1706
    .line 1707
    move-object/from16 v10, v23

    .line 1708
    .line 1709
    iget-object v1, v10, Lu4/f;->j:Lu4/d;

    .line 1710
    .line 1711
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1712
    .line 1713
    .line 1714
    :try_start_2
    iget-object v3, v0, Lu4/c;->b:Lx4/u;

    .line 1715
    .line 1716
    iget-object v3, v3, Lx4/u;->a:Ly4/c;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1717
    .line 1718
    invoke-virtual {v1}, Lu4/a0;->g()V

    .line 1719
    .line 1720
    .line 1721
    iget-object v1, v1, Lu4/d;->f:Ljava/util/TreeMap;

    .line 1722
    .line 1723
    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    .line 1725
    .line 1726
    move-result-object v4

    .line 1727
    if-nez v4, :cond_48

    .line 1728
    .line 1729
    invoke-virtual {v1, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1730
    .line 1731
    .line 1732
    move-object/from16 v1, p0

    .line 1733
    .line 1734
    move-object/from16 v0, p1

    .line 1735
    .line 1736
    move-object/from16 v8, p2

    .line 1737
    .line 1738
    move-object/from16 v6, v17

    .line 1739
    .line 1740
    move-object/from16 v7, v20

    .line 1741
    .line 1742
    const/16 v2, 0x1d

    .line 1743
    .line 1744
    const/4 v3, 0x1

    .line 1745
    const/4 v5, 0x0

    .line 1746
    goto/16 :goto_4

    .line 1747
    .line 1748
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1749
    .line 1750
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1751
    .line 1752
    const-string v2, "already added: "

    .line 1753
    .line 1754
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1755
    .line 1756
    .line 1757
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1758
    .line 1759
    .line 1760
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1761
    .line 1762
    .line 1763
    move-result-object v1

    .line 1764
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1765
    .line 1766
    .line 1767
    throw v0

    .line 1768
    :catch_3
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1769
    .line 1770
    const-string v1, "clazz == null"

    .line 1771
    .line 1772
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1773
    .line 1774
    .line 1775
    throw v0

    .line 1776
    :cond_49
    move-object/from16 v24, v13

    .line 1777
    .line 1778
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1779
    .line 1780
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1781
    .line 1782
    const-string v2, "Undeclared type "

    .line 1783
    .line 1784
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1785
    .line 1786
    .line 1787
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1788
    .line 1789
    .line 1790
    const-string v2, " declares members: "

    .line 1791
    .line 1792
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1793
    .line 1794
    .line 1795
    invoke-virtual/range {v24 .. v24}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 1796
    .line 1797
    .line 1798
    move-result-object v2

    .line 1799
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1800
    .line 1801
    .line 1802
    const-string v2, " "

    .line 1803
    .line 1804
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1805
    .line 1806
    .line 1807
    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 1808
    .line 1809
    .line 1810
    move-result-object v2

    .line 1811
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1812
    .line 1813
    .line 1814
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1815
    .line 1816
    .line 1817
    move-result-object v1

    .line 1818
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1819
    .line 1820
    .line 1821
    throw v0

    .line 1822
    :cond_4a
    move-object/from16 v17, v6

    .line 1823
    .line 1824
    move-object/from16 v20, v7

    .line 1825
    .line 1826
    :try_start_3
    iget-object v0, v1, Lkf/d;->c:Ljava/lang/Object;

    .line 1827
    .line 1828
    check-cast v0, Lu4/f;

    .line 1829
    .line 1830
    invoke-virtual {v0}, Lu4/f;->b()[B

    .line 1831
    .line 1832
    .line 1833
    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1834
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->createNewFile()Z

    .line 1835
    .line 1836
    .line 1837
    new-instance v2, Ljava/util/jar/JarOutputStream;

    .line 1838
    .line 1839
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 1840
    .line 1841
    new-instance v4, Ljava/io/FileOutputStream;

    .line 1842
    .line 1843
    move-object/from16 v5, v20

    .line 1844
    .line 1845
    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1846
    .line 1847
    .line 1848
    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1849
    .line 1850
    .line 1851
    invoke-direct {v2, v3}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1852
    .line 1853
    .line 1854
    :try_start_4
    new-instance v3, Ljava/util/jar/JarEntry;

    .line 1855
    .line 1856
    const-string v4, "classes.dex"

    .line 1857
    .line 1858
    invoke-direct {v3, v4}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    .line 1859
    .line 1860
    .line 1861
    array-length v4, v0

    .line 1862
    int-to-long v6, v4

    .line 1863
    invoke-virtual {v3, v6, v7}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 1864
    .line 1865
    .line 1866
    invoke-virtual {v2, v3}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1867
    .line 1868
    .line 1869
    :try_start_5
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1870
    .line 1871
    .line 1872
    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1873
    .line 1874
    .line 1875
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1876
    .line 1877
    .line 1878
    move-object/from16 v0, p1

    .line 1879
    .line 1880
    move-object/from16 v6, v17

    .line 1881
    .line 1882
    invoke-virtual {v1, v5, v6, v0}, Lkf/d;->x(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    .line 1883
    .line 1884
    .line 1885
    move-result-object v0

    .line 1886
    return-object v0

    .line 1887
    :catchall_0
    move-exception v0

    .line 1888
    goto :goto_31

    .line 1889
    :catchall_1
    move-exception v0

    .line 1890
    move-object v3, v0

    .line 1891
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 1892
    .line 1893
    .line 1894
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1895
    :goto_31
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1896
    .line 1897
    .line 1898
    throw v0

    .line 1899
    :catch_4
    move-exception v0

    .line 1900
    new-instance v2, Ljava/lang/RuntimeException;

    .line 1901
    .line 1902
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 1903
    .line 1904
    .line 1905
    goto :goto_33

    .line 1906
    :goto_32
    throw v2

    .line 1907
    :goto_33
    goto :goto_32
.end method

.method public x(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object p3, v5

    .line 11
    :goto_0
    :try_start_0
    const-string v6, "dalvik.system.BaseDexClassLoader"

    .line 12
    .line 13
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v6, "dalvik.system.DexClassLoader"

    .line 17
    .line 18
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    new-array v7, v4, [Ljava/lang/Class;

    .line 23
    .line 24
    const-class v8, Ljava/lang/String;

    .line 25
    .line 26
    aput-object v8, v7, v3

    .line 27
    .line 28
    aput-object v8, v7, v2

    .line 29
    .line 30
    aput-object v8, v7, v1

    .line 31
    .line 32
    const-class v8, Ljava/lang/ClassLoader;

    .line 33
    .line 34
    aput-object v8, v7, v0

    .line 35
    .line 36
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    new-array v4, v4, [Ljava/lang/Object;

    .line 49
    .line 50
    aput-object p1, v4, v3

    .line 51
    .line 52
    aput-object p2, v4, v2

    .line 53
    .line 54
    aput-object v5, v4, v1

    .line 55
    .line 56
    aput-object p3, v4, v0

    .line 57
    .line 58
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 63
    .line 64
    return-object p1

    .line 65
    :catch_0
    move-exception p1

    .line 66
    goto :goto_1

    .line 67
    :catch_1
    move-exception p1

    .line 68
    goto :goto_2

    .line 69
    :catch_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 70
    .line 71
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :catch_3
    new-instance p1, Ljava/lang/AssertionError;

    .line 76
    .line 77
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :catch_4
    new-instance p1, Ljava/lang/AssertionError;

    .line 82
    .line 83
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    throw p2

    .line 97
    :goto_2
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 98
    .line 99
    const-string p3, "load() requires a Dalvik VM"

    .line 100
    .line 101
    invoke-direct {p2, p3, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    throw p2
.end method

.method public varargs y([Ljava/lang/Object;)Ll2/o;
    .locals 4

    .line 1
    iget-object v0, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :goto_0
    move-object v1, v2

    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    :try_start_1
    iget-object v1, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lha/jd;

    .line 25
    .line 26
    invoke-virtual {v1}, Lha/jd;->a()Ljava/lang/reflect/Constructor;

    .line 27
    .line 28
    .line 29
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    monitor-exit v0

    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception p1

    .line 33
    new-instance v1, Ljava/lang/RuntimeException;

    .line 34
    .line 35
    const-string v2, "Error instantiating extension"

    .line 36
    .line 37
    invoke-direct {v1, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw v1

    .line 41
    :catch_1
    iget-object v1, p0, Lkf/d;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 47
    .line 48
    .line 49
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    goto :goto_0

    .line 51
    :goto_1
    if-nez v1, :cond_1

    .line 52
    .line 53
    return-object v2

    .line 54
    :cond_1
    :try_start_3
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Ll2/o;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 59
    .line 60
    return-object p1

    .line 61
    :catch_2
    move-exception p1

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string v1, "Unexpected error creating extractor"

    .line 65
    .line 66
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 71
    goto :goto_4

    .line 72
    :goto_3
    throw p1

    .line 73
    :goto_4
    goto :goto_3
.end method

.method public z(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lkf/d;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lkf/c;

    .line 24
    .line 25
    iget-object v3, v2, Lkf/c;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    iget-object p1, v2, Lkf/c;->a:Ljava/lang/String;

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_2
    return-object v0
.end method

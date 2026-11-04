.class public final Lq/a0;
.super Lq/m;
.source "SourceFile"

# interfaces
.implements Lv/i;
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field public static final Y0:La0/t;

.field public static final Z0:Z

.field public static final a1:[I

.field public static final b1:Z

.field public static final c1:Z

.field public static final d1:Z


# instance fields
.field public A:Lx0/l1;

.field public B:Z

.field public C:Landroid/view/ViewGroup;

.field public D:Landroid/widget/TextView;

.field public E:Landroid/view/View;

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public K:Z

.field public L:Z

.field public M:Z

.field public M0:Lq/x;

.field public N:Z

.field public N0:Lq/x;

.field public O:[Lq/z;

.field public O0:Z

.field public P:Lq/z;

.field public P0:I

.field public final Q0:Lq/o;

.field public R:Z

.field public R0:Z

.field public S:Z

.field public S0:Landroid/graphics/Rect;

.field public T:Z

.field public T0:Landroid/graphics/Rect;

.field public U0:Lq/d0;

.field public V:Z

.field public V0:Lj5/c;

.field public W0:Landroid/window/OnBackInvokedDispatcher;

.field public X:Landroid/content/res/Configuration;

.field public X0:Landroid/window/OnBackInvokedCallback;

.field public final Y:I

.field public Z:I

.field public h0:I

.field public final j:Ljava/lang/Object;

.field public final k:Landroid/content/Context;

.field public l:Landroid/view/Window;

.field public m:Lq/w;

.field public final n:Ljava/lang/Object;

.field public p:Lq/m0;

.field public q:Lu/i;

.field public r:Ljava/lang/CharSequence;

.field public s:Lw/l1;

.field public t:Lq/p;

.field public t0:Z

.field public v:Lq/p;

.field public w:Lu/a;

.field public x:Landroidx/appcompat/widget/ActionBarContextView;

.field public y:Landroid/widget/PopupWindow;

.field public z:Lq/o;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, La0/t;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, La0/t;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lq/a0;->Y0:La0/t;

    .line 8
    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v2, 0x15

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-ge v0, v2, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    :cond_0
    sput-boolean v1, Lq/a0;->Z0:Z

    .line 18
    .line 19
    const v0, 0x1010054

    .line 20
    .line 21
    .line 22
    filled-new-array {v0}, [I

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lq/a0;->a1:[I

    .line 27
    .line 28
    const-string v0, "robolectric"

    .line 29
    .line 30
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    xor-int/2addr v0, v3

    .line 37
    sput-boolean v0, Lq/a0;->b1:Z

    .line 38
    .line 39
    sput-boolean v3, Lq/a0;->c1:Z

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    sget-boolean v0, Lq/a0;->d1:Z

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lq/n;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Lq/n;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 57
    .line 58
    .line 59
    sput-boolean v3, Lq/a0;->d1:Z

    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Lq/j;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lq/m;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    iput-object p3, p0, Lq/a0;->A:Lx0/l1;

    .line 6
    .line 7
    const/16 v0, -0x64

    .line 8
    .line 9
    iput v0, p0, Lq/a0;->Y:I

    .line 10
    .line 11
    new-instance v1, Lq/o;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p0, v2}, Lq/o;-><init>(Lq/a0;I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lq/a0;->Q0:Lq/o;

    .line 18
    .line 19
    iput-object p1, p0, Lq/a0;->k:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p4, p0, Lq/a0;->j:Ljava/lang/Object;

    .line 22
    .line 23
    instance-of p4, p4, Landroid/app/Dialog;

    .line 24
    .line 25
    if-eqz p4, :cond_2

    .line 26
    .line 27
    :goto_0
    if-eqz p1, :cond_1

    .line 28
    .line 29
    instance-of p4, p1, Lq/i;

    .line 30
    .line 31
    if-eqz p4, :cond_0

    .line 32
    .line 33
    move-object p3, p1

    .line 34
    check-cast p3, Lq/i;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    instance-of p4, p1, Landroid/content/ContextWrapper;

    .line 38
    .line 39
    if-eqz p4, :cond_1

    .line 40
    .line 41
    check-cast p1, Landroid/content/ContextWrapper;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 49
    .line 50
    invoke-virtual {p3}, Lq/i;->r()Lq/m;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lq/a0;

    .line 55
    .line 56
    iget p1, p1, Lq/a0;->Y:I

    .line 57
    .line 58
    iput p1, p0, Lq/a0;->Y:I

    .line 59
    .line 60
    :cond_2
    iget p1, p0, Lq/a0;->Y:I

    .line 61
    .line 62
    if-ne p1, v0, :cond_3

    .line 63
    .line 64
    sget-object p1, Lq/a0;->Y0:La0/t;

    .line 65
    .line 66
    iget-object p3, p0, Lq/a0;->j:Ljava/lang/Object;

    .line 67
    .line 68
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    invoke-virtual {p1, p3}, La0/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    check-cast p3, Ljava/lang/Integer;

    .line 81
    .line 82
    if-eqz p3, :cond_3

    .line 83
    .line 84
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result p3

    .line 88
    iput p3, p0, Lq/a0;->Y:I

    .line 89
    .line 90
    iget-object p3, p0, Lq/a0;->j:Ljava/lang/Object;

    .line 91
    .line 92
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    invoke-virtual {p1, p3}, La0/t;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    :cond_3
    if-eqz p2, :cond_4

    .line 104
    .line 105
    invoke-virtual {p0, p2}, Lq/a0;->m(Landroid/view/Window;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    invoke-static {}, Lw/s;->d()V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public static n(Landroid/content/Context;)Lt0/j;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    sget-object v1, Lq/m;->c:Lt0/j;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lq/a0;->x(Landroid/content/res/Configuration;)Lt0/j;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    iget-object v1, v1, Lt0/j;->a:Lt0/l;

    .line 31
    .line 32
    const/16 v2, 0x18

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    if-lt v0, v2, :cond_6

    .line 36
    .line 37
    invoke-interface {v1}, Lt0/l;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    sget-object v0, Lt0/j;->b:Lt0/j;

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-interface {v1}, Lt0/l;->size()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    iget-object v4, p0, Lt0/j;->a:Lt0/l;

    .line 56
    .line 57
    invoke-interface {v4}, Lt0/l;->size()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    add-int/2addr v4, v2

    .line 62
    if-ge v3, v4, :cond_5

    .line 63
    .line 64
    invoke-interface {v1}, Lt0/l;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-ge v3, v2, :cond_3

    .line 69
    .line 70
    invoke-interface {v1, v3}, Lt0/l;->get(I)Ljava/util/Locale;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    invoke-interface {v1}, Lt0/l;->size()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    sub-int v2, v3, v2

    .line 80
    .line 81
    iget-object v4, p0, Lt0/j;->a:Lt0/l;

    .line 82
    .line 83
    invoke-interface {v4, v2}, Lt0/l;->get(I)Ljava/util/Locale;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    :goto_1
    if-eqz v2, :cond_4

    .line 88
    .line 89
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    new-array v1, v1, [Ljava/util/Locale;

    .line 100
    .line 101
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, [Ljava/util/Locale;

    .line 106
    .line 107
    invoke-static {v0}, Lt0/j;->a([Ljava/util/Locale;)Lt0/j;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    goto :goto_2

    .line 112
    :cond_6
    invoke-interface {v1}, Lt0/l;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_7

    .line 117
    .line 118
    sget-object v0, Lt0/j;->b:Lt0/j;

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_7
    invoke-interface {v1, v3}, Lt0/l;->get(I)Ljava/util/Locale;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0}, Lt0/j;->c(Ljava/lang/String;)Lt0/j;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    :goto_2
    iget-object v1, v0, Lt0/j;->a:Lt0/l;

    .line 134
    .line 135
    invoke-interface {v1}, Lt0/l;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_8

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_8
    move-object p0, v0

    .line 143
    :goto_3
    return-object p0
.end method

.method public static r(Landroid/content/Context;ILt0/j;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    if-eqz p4, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 25
    .line 26
    and-int/lit8 p0, p0, 0x30

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/16 p0, 0x20

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/16 p0, 0x10

    .line 33
    .line 34
    :goto_0
    new-instance p1, Landroid/content/res/Configuration;

    .line 35
    .line 36
    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 p4, 0x0

    .line 40
    iput p4, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 41
    .line 42
    if-eqz p3, :cond_3

    .line 43
    .line 44
    invoke-virtual {p1, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget p3, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 48
    .line 49
    and-int/lit8 p3, p3, -0x31

    .line 50
    .line 51
    or-int/2addr p0, p3

    .line 52
    iput p0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 53
    .line 54
    if-eqz p2, :cond_5

    .line 55
    .line 56
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 57
    .line 58
    const/16 p3, 0x18

    .line 59
    .line 60
    if-lt p0, p3, :cond_4

    .line 61
    .line 62
    invoke-static {p1, p2}, Lq/u;->d(Landroid/content/res/Configuration;Lt0/j;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    iget-object p0, p2, Lt0/j;->a:Lt0/l;

    .line 67
    .line 68
    invoke-interface {p0, v1}, Lt0/l;->get(I)Ljava/util/Locale;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-static {p1, p2}, Lq/r;->b(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p0, v1}, Lt0/l;->get(I)Ljava/util/Locale;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p1, p0}, Lq/r;->a(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    .line 80
    .line 81
    .line 82
    :cond_5
    :goto_1
    return-object p1
.end method

.method public static x(Landroid/content/res/Configuration;)Lt0/j;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lq/u;->b(Landroid/content/res/Configuration;)Lt0/j;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/16 v1, 0x15

    .line 13
    .line 14
    if-lt v0, v1, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 17
    .line 18
    invoke-static {p0}, Lq/s;->a(Ljava/util/Locale;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lt0/j;->c(Ljava/lang/String;)Lt0/j;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    new-array v0, v0, [Ljava/util/Locale;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    aput-object p0, v0, v1

    .line 34
    .line 35
    invoke-static {v0}, Lt0/j;->a([Ljava/util/Locale;)Lt0/j;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method


# virtual methods
.method public final A(I)V
    .locals 3

    .line 1
    iget v0, p0, Lq/a0;->P0:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    shl-int p1, v1, p1

    .line 5
    .line 6
    or-int/2addr p1, v0

    .line 7
    iput p1, p0, Lq/a0;->P0:I

    .line 8
    .line 9
    iget-boolean p1, p0, Lq/a0;->O0:Z

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lq/a0;->l:Landroid/view/Window;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lq/a0;->Q0:Lq/o;

    .line 20
    .line 21
    sget-object v2, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 22
    .line 23
    invoke-static {p1, v0}, Lx0/j0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    iput-boolean v1, p0, Lq/a0;->O0:Z

    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final B(Landroid/content/Context;I)I
    .locals 2

    .line 1
    const/16 v0, -0x64

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq p2, v0, :cond_5

    .line 5
    .line 6
    if-eq p2, v1, :cond_4

    .line 7
    .line 8
    if-eqz p2, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p2, v0, :cond_4

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p2, v0, :cond_4

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-ne p2, v0, :cond_1

    .line 18
    .line 19
    iget-object p2, p0, Lq/a0;->N0:Lq/x;

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    new-instance p2, Lq/x;

    .line 24
    .line 25
    invoke-direct {p2, p0, p1}, Lq/x;-><init>(Lq/a0;Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lq/a0;->N0:Lq/x;

    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lq/a0;->N0:Lq/x;

    .line 31
    .line 32
    invoke-virtual {p1}, Lq/x;->e()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string p2, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    .line 47
    const/16 v0, 0x17

    .line 48
    .line 49
    if-lt p2, v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    const-string v0, "uimode"

    .line 56
    .line 57
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Landroid/app/UiModeManager;

    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-nez p2, :cond_3

    .line 68
    .line 69
    return v1

    .line 70
    :cond_3
    invoke-virtual {p0, p1}, Lq/a0;->w(Landroid/content/Context;)Lfe/c;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lfe/c;->e()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    return p1

    .line 79
    :cond_4
    return p2

    .line 80
    :cond_5
    return v1
.end method

.method public final C()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lq/a0;->R:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lq/a0;->R:Z

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lq/a0;->y(I)Lq/z;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-boolean v3, v2, Lq/z;->m:Z

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v2, v4}, Lq/a0;->q(Lq/z;Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return v4

    .line 21
    :cond_1
    iget-object v0, p0, Lq/a0;->w:Lu/a;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lu/a;->a()V

    .line 26
    .line 27
    .line 28
    return v4

    .line 29
    :cond_2
    invoke-virtual {p0}, Lq/a0;->z()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lq/a0;->p:Lq/m0;

    .line 33
    .line 34
    if-eqz v0, :cond_5

    .line 35
    .line 36
    iget-object v0, v0, Lq/m0;->f:Lw/m1;

    .line 37
    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    move-object v2, v0

    .line 41
    check-cast v2, Lw/n3;

    .line 42
    .line 43
    iget-object v2, v2, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 44
    .line 45
    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->O:Lw/i3;

    .line 46
    .line 47
    if-eqz v2, :cond_5

    .line 48
    .line 49
    iget-object v2, v2, Lw/i3;->b:Lv/m;

    .line 50
    .line 51
    if-eqz v2, :cond_5

    .line 52
    .line 53
    check-cast v0, Lw/n3;

    .line 54
    .line 55
    iget-object v0, v0, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 56
    .line 57
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->O:Lw/i3;

    .line 58
    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, v0, Lw/i3;->b:Lv/m;

    .line 64
    .line 65
    :goto_0
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0}, Lv/m;->collapseActionView()Z

    .line 68
    .line 69
    .line 70
    :cond_4
    return v4

    .line 71
    :cond_5
    return v1
.end method

.method public final D(Lq/z;Landroid/view/KeyEvent;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v1, Lq/z;->m:Z

    .line 6
    .line 7
    if-nez v2, :cond_1b

    .line 8
    .line 9
    iget-boolean v2, v0, Lq/a0;->V:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_9

    .line 14
    .line 15
    :cond_0
    iget v2, v1, Lq/z;->a:I

    .line 16
    .line 17
    iget-object v3, v0, Lq/a0;->k:Landroid/content/Context;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 30
    .line 31
    and-int/lit8 v4, v4, 0xf

    .line 32
    .line 33
    const/4 v5, 0x4

    .line 34
    if-ne v4, v5, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object v4, v0, Lq/a0;->l:Landroid/view/Window;

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const/4 v5, 0x1

    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    iget-object v6, v1, Lq/z;->h:Lv/k;

    .line 47
    .line 48
    invoke-interface {v4, v2, v6}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0, v1, v5}, Lq/a0;->q(Lq/z;Z)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    const-string v4, "window"

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Landroid/view/WindowManager;

    .line 65
    .line 66
    if-nez v4, :cond_3

    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    invoke-virtual/range {p0 .. p2}, Lq/a0;->F(Lq/z;Landroid/view/KeyEvent;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-nez v6, :cond_4

    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    iget-object v6, v1, Lq/z;->e:Lq/y;

    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    const/4 v8, -0x2

    .line 80
    if-eqz v6, :cond_6

    .line 81
    .line 82
    iget-boolean v9, v1, Lq/z;->n:Z

    .line 83
    .line 84
    if-eqz v9, :cond_5

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    iget-object v3, v1, Lq/z;->g:Landroid/view/View;

    .line 88
    .line 89
    if-eqz v3, :cond_18

    .line 90
    .line 91
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-eqz v3, :cond_18

    .line 96
    .line 97
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 98
    .line 99
    const/4 v6, -0x1

    .line 100
    if-ne v3, v6, :cond_18

    .line 101
    .line 102
    const/4 v10, -0x1

    .line 103
    goto/16 :goto_7

    .line 104
    .line 105
    :cond_6
    :goto_0
    if-nez v6, :cond_b

    .line 106
    .line 107
    invoke-virtual/range {p0 .. p0}, Lq/a0;->z()V

    .line 108
    .line 109
    .line 110
    iget-object v6, v0, Lq/a0;->p:Lq/m0;

    .line 111
    .line 112
    if-eqz v6, :cond_7

    .line 113
    .line 114
    invoke-virtual {v6}, Lq/m0;->l0()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    goto :goto_1

    .line 119
    :cond_7
    const/4 v6, 0x0

    .line 120
    :goto_1
    if-nez v6, :cond_8

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_8
    move-object v3, v6

    .line 124
    :goto_2
    new-instance v6, Landroid/util/TypedValue;

    .line 125
    .line 126
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    invoke-virtual {v9, v10}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 142
    .line 143
    .line 144
    const v10, 0x7f040005

    .line 145
    .line 146
    .line 147
    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 148
    .line 149
    .line 150
    iget v10, v6, Landroid/util/TypedValue;->resourceId:I

    .line 151
    .line 152
    if-eqz v10, :cond_9

    .line 153
    .line 154
    invoke-virtual {v9, v10, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 155
    .line 156
    .line 157
    :cond_9
    const v10, 0x7f040431

    .line 158
    .line 159
    .line 160
    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 161
    .line 162
    .line 163
    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    .line 164
    .line 165
    if-eqz v6, :cond_a

    .line 166
    .line 167
    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_a
    const v6, 0x7f140256

    .line 172
    .line 173
    .line 174
    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 175
    .line 176
    .line 177
    :goto_3
    new-instance v6, Lu/d;

    .line 178
    .line 179
    invoke-direct {v6, v3, v7}, Lu/d;-><init>(Landroid/content/Context;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v6}, Lu/d;->getTheme()Landroid/content/res/Resources$Theme;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v3, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 187
    .line 188
    .line 189
    iput-object v6, v1, Lq/z;->j:Lu/d;

    .line 190
    .line 191
    sget-object v3, Lp/a;->j:[I

    .line 192
    .line 193
    invoke-virtual {v6, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    const/16 v6, 0x56

    .line 198
    .line 199
    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    iput v6, v1, Lq/z;->b:I

    .line 204
    .line 205
    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    iput v6, v1, Lq/z;->d:I

    .line 210
    .line 211
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 212
    .line 213
    .line 214
    new-instance v3, Lq/y;

    .line 215
    .line 216
    iget-object v6, v1, Lq/z;->j:Lu/d;

    .line 217
    .line 218
    invoke-direct {v3, v0, v6}, Lq/y;-><init>(Lq/a0;Lu/d;)V

    .line 219
    .line 220
    .line 221
    iput-object v3, v1, Lq/z;->e:Lq/y;

    .line 222
    .line 223
    const/16 v3, 0x51

    .line 224
    .line 225
    iput v3, v1, Lq/z;->c:I

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_b
    iget-boolean v3, v1, Lq/z;->n:Z

    .line 229
    .line 230
    if-eqz v3, :cond_c

    .line 231
    .line 232
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-lez v3, :cond_c

    .line 237
    .line 238
    iget-object v3, v1, Lq/z;->e:Lq/y;

    .line 239
    .line 240
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 241
    .line 242
    .line 243
    :cond_c
    :goto_4
    iget-object v3, v1, Lq/z;->g:Landroid/view/View;

    .line 244
    .line 245
    if-eqz v3, :cond_d

    .line 246
    .line 247
    iput-object v3, v1, Lq/z;->f:Landroid/view/View;

    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_d
    iget-object v3, v1, Lq/z;->h:Lv/k;

    .line 251
    .line 252
    if-nez v3, :cond_e

    .line 253
    .line 254
    goto/16 :goto_8

    .line 255
    .line 256
    :cond_e
    iget-object v3, v0, Lq/a0;->v:Lq/p;

    .line 257
    .line 258
    if-nez v3, :cond_f

    .line 259
    .line 260
    new-instance v3, Lq/p;

    .line 261
    .line 262
    const/4 v6, 0x4

    .line 263
    invoke-direct {v3, v0, v6}, Lq/p;-><init>(Lq/a0;I)V

    .line 264
    .line 265
    .line 266
    iput-object v3, v0, Lq/a0;->v:Lq/p;

    .line 267
    .line 268
    :cond_f
    iget-object v3, v0, Lq/a0;->v:Lq/p;

    .line 269
    .line 270
    iget-object v6, v1, Lq/z;->i:Lv/g;

    .line 271
    .line 272
    if-nez v6, :cond_10

    .line 273
    .line 274
    new-instance v6, Lv/g;

    .line 275
    .line 276
    iget-object v9, v1, Lq/z;->j:Lu/d;

    .line 277
    .line 278
    invoke-direct {v6, v9}, Lv/g;-><init>(Landroid/content/Context;)V

    .line 279
    .line 280
    .line 281
    iput-object v6, v1, Lq/z;->i:Lv/g;

    .line 282
    .line 283
    iput-object v3, v6, Lv/g;->e:Lv/w;

    .line 284
    .line 285
    iget-object v3, v1, Lq/z;->h:Lv/k;

    .line 286
    .line 287
    iget-object v9, v3, Lv/k;->a:Landroid/content/Context;

    .line 288
    .line 289
    invoke-virtual {v3, v6, v9}, Lv/k;->b(Lv/x;Landroid/content/Context;)V

    .line 290
    .line 291
    .line 292
    :cond_10
    iget-object v3, v1, Lq/z;->i:Lv/g;

    .line 293
    .line 294
    iget-object v6, v1, Lq/z;->e:Lq/y;

    .line 295
    .line 296
    iget-object v9, v3, Lv/g;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 297
    .line 298
    if-nez v9, :cond_12

    .line 299
    .line 300
    iget-object v9, v3, Lv/g;->b:Landroid/view/LayoutInflater;

    .line 301
    .line 302
    const v10, 0x7f0e000d

    .line 303
    .line 304
    .line 305
    invoke-virtual {v9, v10, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    check-cast v6, Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 310
    .line 311
    iput-object v6, v3, Lv/g;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 312
    .line 313
    iget-object v6, v3, Lv/g;->f:Lv/f;

    .line 314
    .line 315
    if-nez v6, :cond_11

    .line 316
    .line 317
    new-instance v6, Lv/f;

    .line 318
    .line 319
    invoke-direct {v6, v3}, Lv/f;-><init>(Lv/g;)V

    .line 320
    .line 321
    .line 322
    iput-object v6, v3, Lv/g;->f:Lv/f;

    .line 323
    .line 324
    :cond_11
    iget-object v6, v3, Lv/g;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 325
    .line 326
    iget-object v9, v3, Lv/g;->f:Lv/f;

    .line 327
    .line 328
    invoke-virtual {v6, v9}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 329
    .line 330
    .line 331
    iget-object v6, v3, Lv/g;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 332
    .line 333
    invoke-virtual {v6, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 334
    .line 335
    .line 336
    :cond_12
    iget-object v3, v3, Lv/g;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 337
    .line 338
    iput-object v3, v1, Lq/z;->f:Landroid/view/View;

    .line 339
    .line 340
    if-eqz v3, :cond_1a

    .line 341
    .line 342
    :goto_5
    iget-object v3, v1, Lq/z;->f:Landroid/view/View;

    .line 343
    .line 344
    if-nez v3, :cond_13

    .line 345
    .line 346
    goto/16 :goto_8

    .line 347
    .line 348
    :cond_13
    iget-object v3, v1, Lq/z;->g:Landroid/view/View;

    .line 349
    .line 350
    if-eqz v3, :cond_14

    .line 351
    .line 352
    goto :goto_6

    .line 353
    :cond_14
    iget-object v3, v1, Lq/z;->i:Lv/g;

    .line 354
    .line 355
    iget-object v6, v3, Lv/g;->f:Lv/f;

    .line 356
    .line 357
    if-nez v6, :cond_15

    .line 358
    .line 359
    new-instance v6, Lv/f;

    .line 360
    .line 361
    invoke-direct {v6, v3}, Lv/f;-><init>(Lv/g;)V

    .line 362
    .line 363
    .line 364
    iput-object v6, v3, Lv/g;->f:Lv/f;

    .line 365
    .line 366
    :cond_15
    iget-object v3, v3, Lv/g;->f:Lv/f;

    .line 367
    .line 368
    invoke-virtual {v3}, Lv/f;->getCount()I

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    if-lez v3, :cond_1a

    .line 373
    .line 374
    :goto_6
    iget-object v3, v1, Lq/z;->f:Landroid/view/View;

    .line 375
    .line 376
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    if-nez v3, :cond_16

    .line 381
    .line 382
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 383
    .line 384
    invoke-direct {v3, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 385
    .line 386
    .line 387
    :cond_16
    iget v6, v1, Lq/z;->b:I

    .line 388
    .line 389
    iget-object v9, v1, Lq/z;->e:Lq/y;

    .line 390
    .line 391
    invoke-virtual {v9, v6}, Lq/y;->setBackgroundResource(I)V

    .line 392
    .line 393
    .line 394
    iget-object v6, v1, Lq/z;->f:Landroid/view/View;

    .line 395
    .line 396
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    instance-of v9, v6, Landroid/view/ViewGroup;

    .line 401
    .line 402
    if-eqz v9, :cond_17

    .line 403
    .line 404
    check-cast v6, Landroid/view/ViewGroup;

    .line 405
    .line 406
    iget-object v9, v1, Lq/z;->f:Landroid/view/View;

    .line 407
    .line 408
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 409
    .line 410
    .line 411
    :cond_17
    iget-object v6, v1, Lq/z;->e:Lq/y;

    .line 412
    .line 413
    iget-object v9, v1, Lq/z;->f:Landroid/view/View;

    .line 414
    .line 415
    invoke-virtual {v6, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    .line 417
    .line 418
    iget-object v3, v1, Lq/z;->f:Landroid/view/View;

    .line 419
    .line 420
    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    if-nez v3, :cond_18

    .line 425
    .line 426
    iget-object v3, v1, Lq/z;->f:Landroid/view/View;

    .line 427
    .line 428
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 429
    .line 430
    .line 431
    :cond_18
    const/4 v10, -0x2

    .line 432
    :goto_7
    iput-boolean v7, v1, Lq/z;->l:Z

    .line 433
    .line 434
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    .line 435
    .line 436
    const/4 v13, 0x0

    .line 437
    const/16 v14, 0x3ea

    .line 438
    .line 439
    const/4 v11, -0x2

    .line 440
    const/4 v12, 0x0

    .line 441
    const/high16 v15, 0x820000

    .line 442
    .line 443
    const/16 v16, -0x3

    .line 444
    .line 445
    move-object v9, v3

    .line 446
    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 447
    .line 448
    .line 449
    iget v6, v1, Lq/z;->c:I

    .line 450
    .line 451
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 452
    .line 453
    iget v6, v1, Lq/z;->d:I

    .line 454
    .line 455
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 456
    .line 457
    iget-object v6, v1, Lq/z;->e:Lq/y;

    .line 458
    .line 459
    invoke-interface {v4, v6, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    .line 461
    .line 462
    iput-boolean v5, v1, Lq/z;->m:Z

    .line 463
    .line 464
    if-nez v2, :cond_19

    .line 465
    .line 466
    invoke-virtual/range {p0 .. p0}, Lq/a0;->H()V

    .line 467
    .line 468
    .line 469
    :cond_19
    return-void

    .line 470
    :cond_1a
    :goto_8
    iput-boolean v5, v1, Lq/z;->n:Z

    .line 471
    .line 472
    :cond_1b
    :goto_9
    return-void
.end method

.method public final E(Lq/z;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p1, Lq/z;->k:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, p1, p3}, Lq/a0;->F(Lq/z;Landroid/view/KeyEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    :cond_1
    iget-object p1, p1, Lq/z;->h:Lv/k;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, p2, p3, v0}, Lv/k;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :cond_2
    return v1
.end method

.method public final F(Lq/z;Landroid/view/KeyEvent;)Z
    .locals 12

    .line 1
    iget-boolean v0, p0, Lq/a0;->V:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p1, Lq/z;->k:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return v2

    .line 13
    :cond_1
    iget-object v0, p0, Lq/a0;->P:Lq/z;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    if-eq v0, p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lq/a0;->q(Lq/z;Z)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lq/a0;->l:Landroid/view/Window;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget v3, p1, Lq/z;->a:I

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    iput-object v4, p1, Lq/z;->g:Landroid/view/View;

    .line 37
    .line 38
    :cond_3
    const/16 v4, 0x6c

    .line 39
    .line 40
    if-eqz v3, :cond_5

    .line 41
    .line 42
    if-ne v3, v4, :cond_4

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    const/4 v5, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_5
    :goto_0
    const/4 v5, 0x1

    .line 48
    :goto_1
    if-eqz v5, :cond_6

    .line 49
    .line 50
    iget-object v6, p0, Lq/a0;->s:Lw/l1;

    .line 51
    .line 52
    if-eqz v6, :cond_6

    .line 53
    .line 54
    check-cast v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 55
    .line 56
    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 57
    .line 58
    .line 59
    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lw/m1;

    .line 60
    .line 61
    check-cast v6, Lw/n3;

    .line 62
    .line 63
    iput-boolean v2, v6, Lw/n3;->l:Z

    .line 64
    .line 65
    :cond_6
    iget-object v6, p1, Lq/z;->g:Landroid/view/View;

    .line 66
    .line 67
    if-nez v6, :cond_1d

    .line 68
    .line 69
    iget-object v6, p1, Lq/z;->h:Lv/k;

    .line 70
    .line 71
    const/4 v7, 0x0

    .line 72
    if-eqz v6, :cond_7

    .line 73
    .line 74
    iget-boolean v8, p1, Lq/z;->o:Z

    .line 75
    .line 76
    if-eqz v8, :cond_17

    .line 77
    .line 78
    :cond_7
    if-nez v6, :cond_10

    .line 79
    .line 80
    iget-object v6, p0, Lq/a0;->k:Landroid/content/Context;

    .line 81
    .line 82
    if-eqz v3, :cond_8

    .line 83
    .line 84
    if-ne v3, v4, :cond_c

    .line 85
    .line 86
    :cond_8
    iget-object v4, p0, Lq/a0;->s:Lw/l1;

    .line 87
    .line 88
    if-eqz v4, :cond_c

    .line 89
    .line 90
    new-instance v4, Landroid/util/TypedValue;

    .line 91
    .line 92
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    const v9, 0x7f04000c

    .line 100
    .line 101
    .line 102
    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 103
    .line 104
    .line 105
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    .line 106
    .line 107
    const v10, 0x7f04000d

    .line 108
    .line 109
    .line 110
    if-eqz v9, :cond_9

    .line 111
    .line 112
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 121
    .line 122
    .line 123
    iget v11, v4, Landroid/util/TypedValue;->resourceId:I

    .line 124
    .line 125
    invoke-virtual {v9, v11, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v9, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_9
    invoke-virtual {v8, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 133
    .line 134
    .line 135
    move-object v9, v7

    .line 136
    :goto_2
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    .line 137
    .line 138
    if-eqz v10, :cond_b

    .line 139
    .line 140
    if-nez v9, :cond_a

    .line 141
    .line 142
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 151
    .line 152
    .line 153
    :cond_a
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    .line 154
    .line 155
    invoke-virtual {v9, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 156
    .line 157
    .line 158
    :cond_b
    if-eqz v9, :cond_c

    .line 159
    .line 160
    new-instance v4, Lu/d;

    .line 161
    .line 162
    invoke-direct {v4, v6, v1}, Lu/d;-><init>(Landroid/content/Context;I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4}, Lu/d;->getTheme()Landroid/content/res/Resources$Theme;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-virtual {v6, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 170
    .line 171
    .line 172
    move-object v6, v4

    .line 173
    :cond_c
    new-instance v4, Lv/k;

    .line 174
    .line 175
    invoke-direct {v4, v6}, Lv/k;-><init>(Landroid/content/Context;)V

    .line 176
    .line 177
    .line 178
    iput-object p0, v4, Lv/k;->e:Lv/i;

    .line 179
    .line 180
    iget-object v6, p1, Lq/z;->h:Lv/k;

    .line 181
    .line 182
    if-ne v4, v6, :cond_d

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_d
    if-eqz v6, :cond_e

    .line 186
    .line 187
    iget-object v8, p1, Lq/z;->i:Lv/g;

    .line 188
    .line 189
    invoke-virtual {v6, v8}, Lv/k;->r(Lv/x;)V

    .line 190
    .line 191
    .line 192
    :cond_e
    iput-object v4, p1, Lq/z;->h:Lv/k;

    .line 193
    .line 194
    iget-object v6, p1, Lq/z;->i:Lv/g;

    .line 195
    .line 196
    if-eqz v6, :cond_f

    .line 197
    .line 198
    iget-object v8, v4, Lv/k;->a:Landroid/content/Context;

    .line 199
    .line 200
    invoke-virtual {v4, v6, v8}, Lv/k;->b(Lv/x;Landroid/content/Context;)V

    .line 201
    .line 202
    .line 203
    :cond_f
    :goto_3
    iget-object v4, p1, Lq/z;->h:Lv/k;

    .line 204
    .line 205
    if-nez v4, :cond_10

    .line 206
    .line 207
    return v1

    .line 208
    :cond_10
    if-eqz v5, :cond_12

    .line 209
    .line 210
    iget-object v4, p0, Lq/a0;->s:Lw/l1;

    .line 211
    .line 212
    if-eqz v4, :cond_12

    .line 213
    .line 214
    iget-object v6, p0, Lq/a0;->t:Lq/p;

    .line 215
    .line 216
    if-nez v6, :cond_11

    .line 217
    .line 218
    new-instance v6, Lq/p;

    .line 219
    .line 220
    const/4 v8, 0x3

    .line 221
    invoke-direct {v6, p0, v8}, Lq/p;-><init>(Lq/a0;I)V

    .line 222
    .line 223
    .line 224
    iput-object v6, p0, Lq/a0;->t:Lq/p;

    .line 225
    .line 226
    :cond_11
    iget-object v6, p1, Lq/z;->h:Lv/k;

    .line 227
    .line 228
    iget-object v8, p0, Lq/a0;->t:Lq/p;

    .line 229
    .line 230
    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 231
    .line 232
    invoke-virtual {v4, v6, v8}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Lv/k;Lv/w;)V

    .line 233
    .line 234
    .line 235
    :cond_12
    iget-object v4, p1, Lq/z;->h:Lv/k;

    .line 236
    .line 237
    invoke-virtual {v4}, Lv/k;->w()V

    .line 238
    .line 239
    .line 240
    iget-object v4, p1, Lq/z;->h:Lv/k;

    .line 241
    .line 242
    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-nez v3, :cond_16

    .line 247
    .line 248
    iget-object p2, p1, Lq/z;->h:Lv/k;

    .line 249
    .line 250
    if-nez p2, :cond_13

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_13
    if-eqz p2, :cond_14

    .line 254
    .line 255
    iget-object v0, p1, Lq/z;->i:Lv/g;

    .line 256
    .line 257
    invoke-virtual {p2, v0}, Lv/k;->r(Lv/x;)V

    .line 258
    .line 259
    .line 260
    :cond_14
    iput-object v7, p1, Lq/z;->h:Lv/k;

    .line 261
    .line 262
    :goto_4
    if-eqz v5, :cond_15

    .line 263
    .line 264
    iget-object p1, p0, Lq/a0;->s:Lw/l1;

    .line 265
    .line 266
    if-eqz p1, :cond_15

    .line 267
    .line 268
    iget-object p2, p0, Lq/a0;->t:Lq/p;

    .line 269
    .line 270
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 271
    .line 272
    invoke-virtual {p1, v7, p2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Lv/k;Lv/w;)V

    .line 273
    .line 274
    .line 275
    :cond_15
    return v1

    .line 276
    :cond_16
    iput-boolean v1, p1, Lq/z;->o:Z

    .line 277
    .line 278
    :cond_17
    iget-object v3, p1, Lq/z;->h:Lv/k;

    .line 279
    .line 280
    invoke-virtual {v3}, Lv/k;->w()V

    .line 281
    .line 282
    .line 283
    iget-object v3, p1, Lq/z;->p:Landroid/os/Bundle;

    .line 284
    .line 285
    if-eqz v3, :cond_18

    .line 286
    .line 287
    iget-object v4, p1, Lq/z;->h:Lv/k;

    .line 288
    .line 289
    invoke-virtual {v4, v3}, Lv/k;->s(Landroid/os/Bundle;)V

    .line 290
    .line 291
    .line 292
    iput-object v7, p1, Lq/z;->p:Landroid/os/Bundle;

    .line 293
    .line 294
    :cond_18
    iget-object v3, p1, Lq/z;->g:Landroid/view/View;

    .line 295
    .line 296
    iget-object v4, p1, Lq/z;->h:Lv/k;

    .line 297
    .line 298
    invoke-interface {v0, v1, v3, v4}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-nez v0, :cond_1a

    .line 303
    .line 304
    if-eqz v5, :cond_19

    .line 305
    .line 306
    iget-object p2, p0, Lq/a0;->s:Lw/l1;

    .line 307
    .line 308
    if-eqz p2, :cond_19

    .line 309
    .line 310
    iget-object v0, p0, Lq/a0;->t:Lq/p;

    .line 311
    .line 312
    check-cast p2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 313
    .line 314
    invoke-virtual {p2, v7, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Lv/k;Lv/w;)V

    .line 315
    .line 316
    .line 317
    :cond_19
    iget-object p1, p1, Lq/z;->h:Lv/k;

    .line 318
    .line 319
    invoke-virtual {p1}, Lv/k;->v()V

    .line 320
    .line 321
    .line 322
    return v1

    .line 323
    :cond_1a
    if-eqz p2, :cond_1b

    .line 324
    .line 325
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 326
    .line 327
    .line 328
    move-result p2

    .line 329
    goto :goto_5

    .line 330
    :cond_1b
    const/4 p2, -0x1

    .line 331
    :goto_5
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 336
    .line 337
    .line 338
    move-result p2

    .line 339
    if-eq p2, v2, :cond_1c

    .line 340
    .line 341
    const/4 p2, 0x1

    .line 342
    goto :goto_6

    .line 343
    :cond_1c
    const/4 p2, 0x0

    .line 344
    :goto_6
    iget-object v0, p1, Lq/z;->h:Lv/k;

    .line 345
    .line 346
    invoke-virtual {v0, p2}, Lv/k;->setQwertyMode(Z)V

    .line 347
    .line 348
    .line 349
    iget-object p2, p1, Lq/z;->h:Lv/k;

    .line 350
    .line 351
    invoke-virtual {p2}, Lv/k;->v()V

    .line 352
    .line 353
    .line 354
    :cond_1d
    iput-boolean v2, p1, Lq/z;->k:Z

    .line 355
    .line 356
    iput-boolean v1, p1, Lq/z;->l:Z

    .line 357
    .line 358
    iput-object p1, p0, Lq/a0;->P:Lq/z;

    .line 359
    .line 360
    return v2
.end method

.method public final G()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lq/a0;->B:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 7
    .line 8
    const-string v1, "Window feature must be requested before adding content"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final H()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-lt v0, v1, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lq/a0;->W0:Landroid/window/OnBackInvokedDispatcher;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0, v1}, Lq/a0;->y(I)Lq/z;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-boolean v0, v0, Lq/z;->m:Z

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    :goto_0
    const/4 v1, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-object v0, p0, Lq/a0;->w:Lu/a;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 30
    .line 31
    iget-object v0, p0, Lq/a0;->X0:Landroid/window/OnBackInvokedCallback;

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Lq/a0;->W0:Landroid/window/OnBackInvokedDispatcher;

    .line 36
    .line 37
    invoke-static {v0, p0}, Lq/v;->b(Ljava/lang/Object;Lq/a0;)Landroid/window/OnBackInvokedCallback;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lq/a0;->X0:Landroid/window/OnBackInvokedCallback;

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    if-nez v1, :cond_4

    .line 45
    .line 46
    iget-object v0, p0, Lq/a0;->X0:Landroid/window/OnBackInvokedCallback;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    iget-object v1, p0, Lq/a0;->W0:Landroid/window/OnBackInvokedDispatcher;

    .line 51
    .line 52
    invoke-static {v1, v0}, Lq/v;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_4
    :goto_2
    return-void
.end method

.method public final I(Lx0/j2;Landroid/graphics/Rect;)I
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lx0/j2;->d()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v2, 0x0

    .line 16
    :goto_0
    iget-object v3, p0, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 17
    .line 18
    const/16 v4, 0x8

    .line 19
    .line 20
    if-eqz v3, :cond_12

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 27
    .line 28
    if-eqz v3, :cond_12

    .line 29
    .line 30
    iget-object v3, p0, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 37
    .line 38
    iget-object v5, p0, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 39
    .line 40
    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_10

    .line 45
    .line 46
    iget-object v5, p0, Lq/a0;->S0:Landroid/graphics/Rect;

    .line 47
    .line 48
    if-nez v5, :cond_2

    .line 49
    .line 50
    new-instance v5, Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v5, p0, Lq/a0;->S0:Landroid/graphics/Rect;

    .line 56
    .line 57
    new-instance v5, Landroid/graphics/Rect;

    .line 58
    .line 59
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v5, p0, Lq/a0;->T0:Landroid/graphics/Rect;

    .line 63
    .line 64
    :cond_2
    iget-object v5, p0, Lq/a0;->S0:Landroid/graphics/Rect;

    .line 65
    .line 66
    iget-object v6, p0, Lq/a0;->T0:Landroid/graphics/Rect;

    .line 67
    .line 68
    if-nez p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {v5, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {p1}, Lx0/j2;->b()I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    invoke-virtual {p1}, Lx0/j2;->d()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    invoke-virtual {p1}, Lx0/j2;->c()I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    invoke-virtual {p1}, Lx0/j2;->a()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-virtual {v5, p2, v7, v8, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 91
    .line 92
    .line 93
    :goto_1
    iget-object p1, p0, Lq/a0;->C:Landroid/view/ViewGroup;

    .line 94
    .line 95
    sget-object p2, Lw/u3;->a:Ljava/lang/reflect/Method;

    .line 96
    .line 97
    if-eqz p2, :cond_4

    .line 98
    .line 99
    const/4 v7, 0x2

    .line 100
    :try_start_0
    new-array v7, v7, [Ljava/lang/Object;

    .line 101
    .line 102
    aput-object v5, v7, v1

    .line 103
    .line 104
    aput-object v6, v7, v0

    .line 105
    .line 106
    invoke-virtual {p2, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :catch_0
    nop

    .line 111
    :cond_4
    :goto_2
    iget p1, v5, Landroid/graphics/Rect;->top:I

    .line 112
    .line 113
    iget p2, v5, Landroid/graphics/Rect;->left:I

    .line 114
    .line 115
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 116
    .line 117
    iget-object v6, p0, Lq/a0;->C:Landroid/view/ViewGroup;

    .line 118
    .line 119
    invoke-static {v6}, Lx0/b1;->j(Landroid/view/View;)Lx0/j2;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    if-nez v6, :cond_5

    .line 124
    .line 125
    const/4 v7, 0x0

    .line 126
    goto :goto_3

    .line 127
    :cond_5
    invoke-virtual {v6}, Lx0/j2;->b()I

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    :goto_3
    if-nez v6, :cond_6

    .line 132
    .line 133
    const/4 v6, 0x0

    .line 134
    goto :goto_4

    .line 135
    :cond_6
    invoke-virtual {v6}, Lx0/j2;->c()I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    :goto_4
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 140
    .line 141
    if-ne v8, p1, :cond_8

    .line 142
    .line 143
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 144
    .line 145
    if-ne v8, p2, :cond_8

    .line 146
    .line 147
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 148
    .line 149
    if-eq v8, v5, :cond_7

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_7
    const/4 p2, 0x0

    .line 153
    goto :goto_6

    .line 154
    :cond_8
    :goto_5
    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 155
    .line 156
    iput p2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 157
    .line 158
    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 159
    .line 160
    const/4 p2, 0x1

    .line 161
    :goto_6
    iget-object v5, p0, Lq/a0;->k:Landroid/content/Context;

    .line 162
    .line 163
    if-lez p1, :cond_9

    .line 164
    .line 165
    iget-object p1, p0, Lq/a0;->E:Landroid/view/View;

    .line 166
    .line 167
    if-nez p1, :cond_9

    .line 168
    .line 169
    new-instance p1, Landroid/view/View;

    .line 170
    .line 171
    invoke-direct {p1, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 172
    .line 173
    .line 174
    iput-object p1, p0, Lq/a0;->E:Landroid/view/View;

    .line 175
    .line 176
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 177
    .line 178
    .line 179
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 180
    .line 181
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 182
    .line 183
    const/4 v9, -0x1

    .line 184
    const/16 v10, 0x33

    .line 185
    .line 186
    invoke-direct {p1, v9, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 187
    .line 188
    .line 189
    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 190
    .line 191
    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 192
    .line 193
    iget-object v6, p0, Lq/a0;->C:Landroid/view/ViewGroup;

    .line 194
    .line 195
    iget-object v7, p0, Lq/a0;->E:Landroid/view/View;

    .line 196
    .line 197
    invoke-virtual {v6, v7, v9, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 198
    .line 199
    .line 200
    goto :goto_7

    .line 201
    :cond_9
    iget-object p1, p0, Lq/a0;->E:Landroid/view/View;

    .line 202
    .line 203
    if-eqz p1, :cond_b

    .line 204
    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 210
    .line 211
    iget v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 212
    .line 213
    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 214
    .line 215
    if-ne v8, v9, :cond_a

    .line 216
    .line 217
    iget v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 218
    .line 219
    if-ne v8, v7, :cond_a

    .line 220
    .line 221
    iget v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 222
    .line 223
    if-eq v8, v6, :cond_b

    .line 224
    .line 225
    :cond_a
    iput v9, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 226
    .line 227
    iput v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 228
    .line 229
    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 230
    .line 231
    iget-object v6, p0, Lq/a0;->E:Landroid/view/View;

    .line 232
    .line 233
    invoke-virtual {v6, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    .line 235
    .line 236
    :cond_b
    :goto_7
    iget-object p1, p0, Lq/a0;->E:Landroid/view/View;

    .line 237
    .line 238
    if-eqz p1, :cond_c

    .line 239
    .line 240
    goto :goto_8

    .line 241
    :cond_c
    const/4 v0, 0x0

    .line 242
    :goto_8
    if-eqz v0, :cond_e

    .line 243
    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-eqz p1, :cond_e

    .line 249
    .line 250
    iget-object p1, p0, Lq/a0;->E:Landroid/view/View;

    .line 251
    .line 252
    invoke-static {p1}, Lx0/j0;->g(Landroid/view/View;)I

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    and-int/lit16 v6, v6, 0x2000

    .line 257
    .line 258
    if-eqz v6, :cond_d

    .line 259
    .line 260
    const v6, 0x7f060006

    .line 261
    .line 262
    .line 263
    invoke-static {v5, v6}, Ln0/g;->c(Landroid/content/Context;I)I

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    goto :goto_9

    .line 268
    :cond_d
    const v6, 0x7f060005

    .line 269
    .line 270
    .line 271
    invoke-static {v5, v6}, Ln0/g;->c(Landroid/content/Context;I)I

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    :goto_9
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 276
    .line 277
    .line 278
    :cond_e
    iget-boolean p1, p0, Lq/a0;->K:Z

    .line 279
    .line 280
    if-nez p1, :cond_f

    .line 281
    .line 282
    if-eqz v0, :cond_f

    .line 283
    .line 284
    const/4 v2, 0x0

    .line 285
    :cond_f
    move p1, v0

    .line 286
    move v0, p2

    .line 287
    goto :goto_a

    .line 288
    :cond_10
    iget p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 289
    .line 290
    if-eqz p1, :cond_11

    .line 291
    .line 292
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 293
    .line 294
    const/4 p1, 0x0

    .line 295
    goto :goto_a

    .line 296
    :cond_11
    const/4 p1, 0x0

    .line 297
    const/4 v0, 0x0

    .line 298
    :goto_a
    if-eqz v0, :cond_13

    .line 299
    .line 300
    iget-object p2, p0, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 301
    .line 302
    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    .line 304
    .line 305
    goto :goto_b

    .line 306
    :cond_12
    const/4 p1, 0x0

    .line 307
    :cond_13
    :goto_b
    iget-object p2, p0, Lq/a0;->E:Landroid/view/View;

    .line 308
    .line 309
    if-eqz p2, :cond_15

    .line 310
    .line 311
    if-eqz p1, :cond_14

    .line 312
    .line 313
    goto :goto_c

    .line 314
    :cond_14
    const/16 v1, 0x8

    .line 315
    .line 316
    :goto_c
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 317
    .line 318
    .line 319
    :cond_15
    return v2
.end method

.method public final b()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lq/a0;->S:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1, v0}, Lq/a0;->l(ZZ)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lq/a0;->v()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lq/a0;->j:Ljava/lang/Object;

    .line 12
    .line 13
    instance-of v2, v1, Landroid/app/Activity;

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    :try_start_0
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    .line 19
    :try_start_1
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Lm0/c0;->e(Landroid/app/Activity;Landroid/content/ComponentName;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 35
    :catch_1
    const/4 v1, 0x0

    .line 36
    :goto_0
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Lq/a0;->p:Lq/m0;

    .line 39
    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    iput-boolean v0, p0, Lq/a0;->R0:Z

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {v1, v0}, Lq/m0;->n0(Z)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_1
    sget-object v1, Lq/m;->h:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v1

    .line 51
    :try_start_3
    invoke-static {p0}, Lq/m;->d(Lq/a0;)V

    .line 52
    .line 53
    .line 54
    sget-object v2, Lq/m;->g:La0/f;

    .line 55
    .line 56
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 57
    .line 58
    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, La0/f;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    monitor-exit v1

    .line 65
    goto :goto_2

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    throw v0

    .line 69
    :cond_2
    :goto_2
    new-instance v1, Landroid/content/res/Configuration;

    .line 70
    .line 71
    iget-object v2, p0, Lq/a0;->k:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lq/a0;->X:Landroid/content/res/Configuration;

    .line 85
    .line 86
    iput-boolean v0, p0, Lq/a0;->T:Z

    .line 87
    .line 88
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq/a0;->j:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v0, v0, Landroid/app/Activity;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lq/m;->h:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-static {p0}, Lq/m;->d(Lq/a0;)V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1

    .line 18
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lq/a0;->O0:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lq/a0;->l:Landroid/view/Window;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lq/a0;->Q0:Lq/o;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lq/a0;->V:Z

    .line 35
    .line 36
    iget v0, p0, Lq/a0;->Y:I

    .line 37
    .line 38
    const/16 v1, -0x64

    .line 39
    .line 40
    if-eq v0, v1, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lq/a0;->j:Ljava/lang/Object;

    .line 43
    .line 44
    instance-of v1, v0, Landroid/app/Activity;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    check-cast v0, Landroid/app/Activity;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    sget-object v0, Lq/a0;->Y0:La0/t;

    .line 57
    .line 58
    iget-object v1, p0, Lq/a0;->j:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget v2, p0, Lq/a0;->Y:I

    .line 69
    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, La0/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    sget-object v0, Lq/a0;->Y0:La0/t;

    .line 79
    .line 80
    iget-object v1, p0, Lq/a0;->j:Ljava/lang/Object;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, La0/t;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :goto_1
    iget-object v0, p0, Lq/a0;->M0:Lq/x;

    .line 94
    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    invoke-virtual {v0}, Lfe/c;->c()V

    .line 98
    .line 99
    .line 100
    :cond_3
    iget-object v0, p0, Lq/a0;->N0:Lq/x;

    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    invoke-virtual {v0}, Lfe/c;->c()V

    .line 105
    .line 106
    .line 107
    :cond_4
    return-void
.end method

.method public final e(Lv/k;Landroid/view/MenuItem;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lq/a0;->l:Landroid/view/Window;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-boolean v2, p0, Lq/a0;->V:Z

    .line 11
    .line 12
    if-nez v2, :cond_3

    .line 13
    .line 14
    invoke-virtual {p1}, Lv/k;->k()Lv/k;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v2, p0, Lq/a0;->O:[Lq/z;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    array-length v3, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v3, 0x0

    .line 25
    :goto_0
    const/4 v4, 0x0

    .line 26
    :goto_1
    if-ge v4, v3, :cond_2

    .line 27
    .line 28
    aget-object v5, v2, v4

    .line 29
    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    iget-object v6, v5, Lq/z;->h:Lv/k;

    .line 33
    .line 34
    if-ne v6, p1, :cond_1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 v5, 0x0

    .line 41
    :goto_2
    if-eqz v5, :cond_3

    .line 42
    .line 43
    iget p1, v5, Lq/z;->a:I

    .line 44
    .line 45
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    :cond_3
    return v1
.end method

.method public final f(Lv/k;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lq/a0;->s:Lw/l1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz p1, :cond_5

    .line 6
    .line 7
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lw/m1;

    .line 13
    .line 14
    check-cast p1, Lw/n3;

    .line 15
    .line 16
    iget-object p1, p1, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_5

    .line 23
    .line 24
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 25
    .line 26
    if-eqz p1, :cond_5

    .line 27
    .line 28
    iget-boolean p1, p1, Landroidx/appcompat/widget/ActionMenuView;->t:Z

    .line 29
    .line 30
    if-eqz p1, :cond_5

    .line 31
    .line 32
    iget-object p1, p0, Lq/a0;->k:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    iget-object p1, p0, Lq/a0;->s:Lw/l1;

    .line 45
    .line 46
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lw/m1;

    .line 52
    .line 53
    check-cast p1, Lw/n3;

    .line 54
    .line 55
    iget-object p1, p1, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 56
    .line 57
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 58
    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->v:Lw/j;

    .line 62
    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    iget-object v2, p1, Lw/j;->w:Lw/g;

    .line 66
    .line 67
    if-nez v2, :cond_0

    .line 68
    .line 69
    invoke-virtual {p1}, Lw/j;->k()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    :cond_0
    iget-object p1, p0, Lq/a0;->l:Landroid/view/Window;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object v2, p0, Lq/a0;->s:Lw/l1;

    .line 82
    .line 83
    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 84
    .line 85
    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 86
    .line 87
    .line 88
    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lw/m1;

    .line 89
    .line 90
    check-cast v2, Lw/n3;

    .line 91
    .line 92
    iget-object v2, v2, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 93
    .line 94
    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 95
    .line 96
    if-eqz v2, :cond_1

    .line 97
    .line 98
    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->v:Lw/j;

    .line 99
    .line 100
    if-eqz v2, :cond_1

    .line 101
    .line 102
    invoke-virtual {v2}, Lw/j;->k()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_1

    .line 107
    .line 108
    const/4 v2, 0x1

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    const/4 v2, 0x0

    .line 111
    :goto_0
    const/16 v3, 0x6c

    .line 112
    .line 113
    if-eqz v2, :cond_3

    .line 114
    .line 115
    iget-object v1, p0, Lq/a0;->s:Lw/l1;

    .line 116
    .line 117
    check-cast v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 118
    .line 119
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 120
    .line 121
    .line 122
    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lw/m1;

    .line 123
    .line 124
    check-cast v1, Lw/n3;

    .line 125
    .line 126
    iget-object v1, v1, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 127
    .line 128
    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 129
    .line 130
    if-eqz v1, :cond_2

    .line 131
    .line 132
    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->v:Lw/j;

    .line 133
    .line 134
    if-eqz v1, :cond_2

    .line 135
    .line 136
    invoke-virtual {v1}, Lw/j;->h()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    :cond_2
    iget-boolean v1, p0, Lq/a0;->V:Z

    .line 141
    .line 142
    if-nez v1, :cond_6

    .line 143
    .line 144
    invoke-virtual {p0, v0}, Lq/a0;->y(I)Lq/z;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget-object v0, v0, Lq/z;->h:Lv/k;

    .line 149
    .line 150
    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_3
    if-eqz p1, :cond_6

    .line 155
    .line 156
    iget-boolean v2, p0, Lq/a0;->V:Z

    .line 157
    .line 158
    if-nez v2, :cond_6

    .line 159
    .line 160
    iget-boolean v2, p0, Lq/a0;->O0:Z

    .line 161
    .line 162
    if-eqz v2, :cond_4

    .line 163
    .line 164
    iget v2, p0, Lq/a0;->P0:I

    .line 165
    .line 166
    and-int/2addr v1, v2

    .line 167
    if-eqz v1, :cond_4

    .line 168
    .line 169
    iget-object v1, p0, Lq/a0;->l:Landroid/view/Window;

    .line 170
    .line 171
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    iget-object v2, p0, Lq/a0;->Q0:Lq/o;

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2}, Lq/o;->run()V

    .line 181
    .line 182
    .line 183
    :cond_4
    invoke-virtual {p0, v0}, Lq/a0;->y(I)Lq/z;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    iget-object v2, v1, Lq/z;->h:Lv/k;

    .line 188
    .line 189
    if-eqz v2, :cond_6

    .line 190
    .line 191
    iget-boolean v4, v1, Lq/z;->o:Z

    .line 192
    .line 193
    if-nez v4, :cond_6

    .line 194
    .line 195
    iget-object v4, v1, Lq/z;->g:Landroid/view/View;

    .line 196
    .line 197
    invoke-interface {p1, v0, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_6

    .line 202
    .line 203
    iget-object v0, v1, Lq/z;->h:Lv/k;

    .line 204
    .line 205
    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 206
    .line 207
    .line 208
    iget-object p1, p0, Lq/a0;->s:Lw/l1;

    .line 209
    .line 210
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 211
    .line 212
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 213
    .line 214
    .line 215
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lw/m1;

    .line 216
    .line 217
    check-cast p1, Lw/n3;

    .line 218
    .line 219
    iget-object p1, p1, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 220
    .line 221
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 222
    .line 223
    if-eqz p1, :cond_6

    .line 224
    .line 225
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->v:Lw/j;

    .line 226
    .line 227
    if-eqz p1, :cond_6

    .line 228
    .line 229
    invoke-virtual {p1}, Lw/j;->l()Z

    .line 230
    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_5
    invoke-virtual {p0, v0}, Lq/a0;->y(I)Lq/z;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    iput-boolean v1, p1, Lq/z;->n:Z

    .line 238
    .line 239
    invoke-virtual {p0, p1, v0}, Lq/a0;->q(Lq/z;Z)V

    .line 240
    .line 241
    .line 242
    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0, p1, v0}, Lq/a0;->D(Lq/z;Landroid/view/KeyEvent;)V

    .line 244
    .line 245
    .line 246
    :cond_6
    :goto_1
    return-void
.end method

.method public final g(I)Z
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/16 v1, 0x6d

    .line 4
    .line 5
    const/16 v2, 0x6c

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    const/16 p1, 0x6c

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v0, 0x9

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    const/16 p1, 0x6d

    .line 17
    .line 18
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lq/a0;->M:Z

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    if-ne p1, v2, :cond_2

    .line 24
    .line 25
    return v3

    .line 26
    :cond_2
    iget-boolean v0, p0, Lq/a0;->H:Z

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    if-ne p1, v4, :cond_3

    .line 32
    .line 33
    iput-boolean v3, p0, Lq/a0;->H:Z

    .line 34
    .line 35
    :cond_3
    if-eq p1, v4, :cond_9

    .line 36
    .line 37
    const/4 v0, 0x2

    .line 38
    if-eq p1, v0, :cond_8

    .line 39
    .line 40
    const/4 v0, 0x5

    .line 41
    if-eq p1, v0, :cond_7

    .line 42
    .line 43
    const/16 v0, 0xa

    .line 44
    .line 45
    if-eq p1, v0, :cond_6

    .line 46
    .line 47
    if-eq p1, v2, :cond_5

    .line 48
    .line 49
    if-eq p1, v1, :cond_4

    .line 50
    .line 51
    iget-object v0, p0, Lq/a0;->l:Landroid/view/Window;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    :cond_4
    invoke-virtual {p0}, Lq/a0;->G()V

    .line 59
    .line 60
    .line 61
    iput-boolean v4, p0, Lq/a0;->I:Z

    .line 62
    .line 63
    return v4

    .line 64
    :cond_5
    invoke-virtual {p0}, Lq/a0;->G()V

    .line 65
    .line 66
    .line 67
    iput-boolean v4, p0, Lq/a0;->H:Z

    .line 68
    .line 69
    return v4

    .line 70
    :cond_6
    invoke-virtual {p0}, Lq/a0;->G()V

    .line 71
    .line 72
    .line 73
    iput-boolean v4, p0, Lq/a0;->K:Z

    .line 74
    .line 75
    return v4

    .line 76
    :cond_7
    invoke-virtual {p0}, Lq/a0;->G()V

    .line 77
    .line 78
    .line 79
    iput-boolean v4, p0, Lq/a0;->G:Z

    .line 80
    .line 81
    return v4

    .line 82
    :cond_8
    invoke-virtual {p0}, Lq/a0;->G()V

    .line 83
    .line 84
    .line 85
    iput-boolean v4, p0, Lq/a0;->F:Z

    .line 86
    .line 87
    return v4

    .line 88
    :cond_9
    invoke-virtual {p0}, Lq/a0;->G()V

    .line 89
    .line 90
    .line 91
    iput-boolean v4, p0, Lq/a0;->M:Z

    .line 92
    .line 93
    return v4
.end method

.method public final h(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lq/a0;->u()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lq/a0;->C:Landroid/view/ViewGroup;

    .line 5
    .line 6
    const v1, 0x1020002

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lq/a0;->k:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lq/a0;->m:Lq/w;

    .line 28
    .line 29
    iget-object v0, p0, Lq/a0;->l:Landroid/view/Window;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Lq/w;->a(Landroid/view/Window$Callback;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final i(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lq/a0;->u()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lq/a0;->C:Landroid/view/ViewGroup;

    .line 5
    .line 6
    const v1, 0x1020002

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lq/a0;->m:Lq/w;

    .line 22
    .line 23
    iget-object v0, p0, Lq/a0;->l:Landroid/view/Window;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lq/w;->a(Landroid/view/Window$Callback;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final j(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lq/a0;->u()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lq/a0;->C:Landroid/view/ViewGroup;

    .line 5
    .line 6
    const v1, 0x1020002

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lq/a0;->m:Lq/w;

    .line 22
    .line 23
    iget-object p2, p0, Lq/a0;->l:Landroid/view/Window;

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Lq/w;->a(Landroid/view/Window$Callback;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final k(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lq/a0;->r:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget-object v0, p0, Lq/a0;->s:Lw/l1;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lw/l1;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lq/a0;->p:Lq/m0;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, v0, Lq/m0;->f:Lw/m1;

    .line 16
    .line 17
    check-cast v0, Lw/n3;

    .line 18
    .line 19
    iget-boolean v1, v0, Lw/n3;->g:Z

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    iput-object p1, v0, Lw/n3;->h:Ljava/lang/CharSequence;

    .line 24
    .line 25
    iget v1, v0, Lw/n3;->b:I

    .line 26
    .line 27
    and-int/lit8 v1, v1, 0x8

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v1, v0, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-boolean v0, v0, Lw/n3;->g:Z

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0, p1}, Lx0/b1;->z(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lq/a0;->D:Landroid/widget/TextView;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    return-void
.end method

.method public final l(ZZ)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lq/a0;->V:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget v1, v0, Lq/a0;->Y:I

    .line 10
    .line 11
    const/16 v3, -0x64

    .line 12
    .line 13
    if-eq v1, v3, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    sget v1, Lq/m;->b:I

    .line 17
    .line 18
    :goto_0
    iget-object v3, v0, Lq/a0;->k:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0, v3, v1}, Lq/a0;->B(Landroid/content/Context;I)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v6, 0x21

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    if-ge v5, v6, :cond_2

    .line 30
    .line 31
    invoke-static {v3}, Lq/a0;->n(Landroid/content/Context;)Lt0/j;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    move-object v6, v7

    .line 37
    :goto_1
    if-nez p2, :cond_3

    .line 38
    .line 39
    if-eqz v6, :cond_3

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-static {v6}, Lq/a0;->x(Landroid/content/res/Configuration;)Lt0/j;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    :cond_3
    invoke-static {v3, v4, v6, v7, v2}, Lq/a0;->r(Landroid/content/Context;ILt0/j;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iget-boolean v8, v0, Lq/a0;->t0:Z

    .line 58
    .line 59
    iget-object v9, v0, Lq/a0;->j:Ljava/lang/Object;

    .line 60
    .line 61
    const/16 v10, 0x18

    .line 62
    .line 63
    const/4 v11, 0x1

    .line 64
    if-nez v8, :cond_7

    .line 65
    .line 66
    instance-of v8, v9, Landroid/app/Activity;

    .line 67
    .line 68
    if-eqz v8, :cond_7

    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    if-nez v8, :cond_4

    .line 75
    .line 76
    const/4 v5, 0x0

    .line 77
    goto :goto_4

    .line 78
    :cond_4
    const/16 v12, 0x1d

    .line 79
    .line 80
    if-lt v5, v12, :cond_5

    .line 81
    .line 82
    const/high16 v5, 0x100c0000

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    if-lt v5, v10, :cond_6

    .line 86
    .line 87
    const/high16 v5, 0xc0000

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_6
    const/4 v5, 0x0

    .line 91
    :goto_2
    :try_start_0
    new-instance v12, Landroid/content/ComponentName;

    .line 92
    .line 93
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    move-result-object v13

    .line 97
    invoke-direct {v12, v3, v13}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8, v12, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    if-eqz v5, :cond_7

    .line 105
    .line 106
    iget v5, v5, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 107
    .line 108
    iput v5, v0, Lq/a0;->h0:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :catch_0
    iput v2, v0, Lq/a0;->h0:I

    .line 112
    .line 113
    :cond_7
    :goto_3
    iput-boolean v11, v0, Lq/a0;->t0:Z

    .line 114
    .line 115
    iget v5, v0, Lq/a0;->h0:I

    .line 116
    .line 117
    :goto_4
    iget-object v8, v0, Lq/a0;->X:Landroid/content/res/Configuration;

    .line 118
    .line 119
    if-nez v8, :cond_8

    .line 120
    .line 121
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    :cond_8
    iget v12, v8, Landroid/content/res/Configuration;->uiMode:I

    .line 130
    .line 131
    and-int/lit8 v12, v12, 0x30

    .line 132
    .line 133
    iget v13, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 134
    .line 135
    and-int/lit8 v13, v13, 0x30

    .line 136
    .line 137
    invoke-static {v8}, Lq/a0;->x(Landroid/content/res/Configuration;)Lt0/j;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    if-nez v6, :cond_9

    .line 142
    .line 143
    move-object v4, v7

    .line 144
    goto :goto_5

    .line 145
    :cond_9
    invoke-static {v4}, Lq/a0;->x(Landroid/content/res/Configuration;)Lt0/j;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    :goto_5
    if-eq v12, v13, :cond_a

    .line 150
    .line 151
    const/16 v6, 0x200

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_a
    const/4 v6, 0x0

    .line 155
    :goto_6
    if-eqz v4, :cond_b

    .line 156
    .line 157
    invoke-virtual {v8, v4}, Lt0/j;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    if-nez v8, :cond_b

    .line 162
    .line 163
    or-int/lit16 v6, v6, 0x2004

    .line 164
    .line 165
    :cond_b
    xor-int/lit8 v8, v5, -0x1

    .line 166
    .line 167
    and-int/2addr v8, v6

    .line 168
    const/16 v12, 0x1c

    .line 169
    .line 170
    if-eqz v8, :cond_e

    .line 171
    .line 172
    if-eqz p1, :cond_e

    .line 173
    .line 174
    iget-boolean v8, v0, Lq/a0;->S:Z

    .line 175
    .line 176
    if-eqz v8, :cond_e

    .line 177
    .line 178
    sget-boolean v8, Lq/a0;->b1:Z

    .line 179
    .line 180
    if-nez v8, :cond_c

    .line 181
    .line 182
    iget-boolean v8, v0, Lq/a0;->T:Z

    .line 183
    .line 184
    if-eqz v8, :cond_e

    .line 185
    .line 186
    :cond_c
    instance-of v8, v9, Landroid/app/Activity;

    .line 187
    .line 188
    if-eqz v8, :cond_e

    .line 189
    .line 190
    move-object v8, v9

    .line 191
    check-cast v8, Landroid/app/Activity;

    .line 192
    .line 193
    invoke-virtual {v8}, Landroid/app/Activity;->isChild()Z

    .line 194
    .line 195
    .line 196
    move-result v14

    .line 197
    if-nez v14, :cond_e

    .line 198
    .line 199
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 200
    .line 201
    if-lt v14, v12, :cond_d

    .line 202
    .line 203
    invoke-virtual {v8}, Landroid/app/Activity;->recreate()V

    .line 204
    .line 205
    .line 206
    goto :goto_7

    .line 207
    :cond_d
    new-instance v14, Landroid/os/Handler;

    .line 208
    .line 209
    invoke-virtual {v8}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 210
    .line 211
    .line 212
    move-result-object v15

    .line 213
    invoke-direct {v14, v15}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 214
    .line 215
    .line 216
    new-instance v15, Lcom/hjq/permissions/core/c;

    .line 217
    .line 218
    const/4 v11, 0x1

    .line 219
    invoke-direct {v15, v8, v11}, Lcom/hjq/permissions/core/c;-><init>(Landroid/app/Activity;I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    .line 224
    .line 225
    :goto_7
    const/4 v8, 0x1

    .line 226
    goto :goto_8

    .line 227
    :cond_e
    const/4 v8, 0x0

    .line 228
    :goto_8
    if-nez v8, :cond_22

    .line 229
    .line 230
    if-eqz v6, :cond_22

    .line 231
    .line 232
    and-int/2addr v5, v6

    .line 233
    if-ne v5, v6, :cond_f

    .line 234
    .line 235
    const/4 v5, 0x1

    .line 236
    goto :goto_9

    .line 237
    :cond_f
    const/4 v5, 0x0

    .line 238
    :goto_9
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    new-instance v11, Landroid/content/res/Configuration;

    .line 243
    .line 244
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 245
    .line 246
    .line 247
    move-result-object v14

    .line 248
    invoke-direct {v11, v14}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 252
    .line 253
    .line 254
    move-result-object v14

    .line 255
    iget v14, v14, Landroid/content/res/Configuration;->uiMode:I

    .line 256
    .line 257
    and-int/lit8 v14, v14, -0x31

    .line 258
    .line 259
    or-int/2addr v13, v14

    .line 260
    iput v13, v11, Landroid/content/res/Configuration;->uiMode:I

    .line 261
    .line 262
    if-eqz v4, :cond_11

    .line 263
    .line 264
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 265
    .line 266
    if-lt v13, v10, :cond_10

    .line 267
    .line 268
    invoke-static {v11, v4}, Lq/u;->d(Landroid/content/res/Configuration;Lt0/j;)V

    .line 269
    .line 270
    .line 271
    goto :goto_a

    .line 272
    :cond_10
    iget-object v13, v4, Lt0/j;->a:Lt0/l;

    .line 273
    .line 274
    invoke-interface {v13, v2}, Lt0/l;->get(I)Ljava/util/Locale;

    .line 275
    .line 276
    .line 277
    move-result-object v14

    .line 278
    invoke-static {v11, v14}, Lq/r;->b(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    .line 279
    .line 280
    .line 281
    invoke-interface {v13, v2}, Lt0/l;->get(I)Ljava/util/Locale;

    .line 282
    .line 283
    .line 284
    move-result-object v13

    .line 285
    invoke-static {v11, v13}, Lq/r;->a(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    .line 286
    .line 287
    .line 288
    :cond_11
    :goto_a
    invoke-virtual {v8, v11, v7}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 289
    .line 290
    .line 291
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 292
    .line 293
    const/16 v14, 0x1a

    .line 294
    .line 295
    const/16 v15, 0x17

    .line 296
    .line 297
    if-ge v13, v14, :cond_1e

    .line 298
    .line 299
    if-lt v13, v12, :cond_12

    .line 300
    .line 301
    goto/16 :goto_13

    .line 302
    .line 303
    :cond_12
    const-string v12, "mDrawableCache"

    .line 304
    .line 305
    const-class v14, Landroid/content/res/Resources;

    .line 306
    .line 307
    if-lt v13, v10, :cond_18

    .line 308
    .line 309
    sget-boolean v13, Landroid/support/v4/media/session/b;->k:Z

    .line 310
    .line 311
    if-nez v13, :cond_13

    .line 312
    .line 313
    :try_start_1
    const-string v13, "mResourcesImpl"

    .line 314
    .line 315
    invoke-virtual {v14, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 316
    .line 317
    .line 318
    move-result-object v13

    .line 319
    sput-object v13, Landroid/support/v4/media/session/b;->j:Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 320
    .line 321
    const/4 v14, 0x1

    .line 322
    :try_start_2
    invoke-virtual {v13, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    .line 323
    .line 324
    .line 325
    goto :goto_b

    .line 326
    :catch_1
    const/4 v14, 0x1

    .line 327
    :catch_2
    :goto_b
    sput-boolean v14, Landroid/support/v4/media/session/b;->k:Z

    .line 328
    .line 329
    :cond_13
    sget-object v13, Landroid/support/v4/media/session/b;->j:Ljava/lang/reflect/Field;

    .line 330
    .line 331
    if-nez v13, :cond_14

    .line 332
    .line 333
    goto/16 :goto_13

    .line 334
    .line 335
    :cond_14
    :try_start_3
    invoke-virtual {v13, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v8
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    .line 339
    goto :goto_c

    .line 340
    :catch_3
    nop

    .line 341
    move-object v8, v7

    .line 342
    :goto_c
    if-nez v8, :cond_15

    .line 343
    .line 344
    goto/16 :goto_13

    .line 345
    .line 346
    :cond_15
    sget-boolean v13, Landroid/support/v4/media/session/b;->e:Z

    .line 347
    .line 348
    if-nez v13, :cond_16

    .line 349
    .line 350
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    move-result-object v13

    .line 354
    invoke-virtual {v13, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 355
    .line 356
    .line 357
    move-result-object v12

    .line 358
    sput-object v12, Landroid/support/v4/media/session/b;->d:Ljava/lang/reflect/Field;
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_4

    .line 359
    .line 360
    const/4 v13, 0x1

    .line 361
    :try_start_5
    invoke-virtual {v12, v13}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_5

    .line 362
    .line 363
    .line 364
    goto :goto_d

    .line 365
    :catch_4
    const/4 v13, 0x1

    .line 366
    :catch_5
    :goto_d
    sput-boolean v13, Landroid/support/v4/media/session/b;->e:Z

    .line 367
    .line 368
    :cond_16
    sget-object v12, Landroid/support/v4/media/session/b;->d:Ljava/lang/reflect/Field;

    .line 369
    .line 370
    if-eqz v12, :cond_17

    .line 371
    .line 372
    :try_start_6
    invoke-virtual {v12, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v7
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_6

    .line 376
    goto :goto_e

    .line 377
    :catch_6
    nop

    .line 378
    :cond_17
    :goto_e
    if-eqz v7, :cond_1e

    .line 379
    .line 380
    invoke-static {v7}, Landroid/support/v4/media/session/b;->g(Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    goto :goto_13

    .line 384
    :cond_18
    if-lt v13, v15, :cond_1c

    .line 385
    .line 386
    sget-boolean v13, Landroid/support/v4/media/session/b;->e:Z

    .line 387
    .line 388
    if-nez v13, :cond_19

    .line 389
    .line 390
    :try_start_7
    invoke-virtual {v14, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 391
    .line 392
    .line 393
    move-result-object v12

    .line 394
    sput-object v12, Landroid/support/v4/media/session/b;->d:Ljava/lang/reflect/Field;
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_7

    .line 395
    .line 396
    const/4 v13, 0x1

    .line 397
    :try_start_8
    invoke-virtual {v12, v13}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_8
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_8} :catch_8

    .line 398
    .line 399
    .line 400
    goto :goto_f

    .line 401
    :catch_7
    const/4 v13, 0x1

    .line 402
    :catch_8
    :goto_f
    sput-boolean v13, Landroid/support/v4/media/session/b;->e:Z

    .line 403
    .line 404
    :cond_19
    sget-object v12, Landroid/support/v4/media/session/b;->d:Ljava/lang/reflect/Field;

    .line 405
    .line 406
    if-eqz v12, :cond_1a

    .line 407
    .line 408
    :try_start_9
    invoke-virtual {v12, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v7
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_9

    .line 412
    goto :goto_10

    .line 413
    :catch_9
    nop

    .line 414
    :cond_1a
    :goto_10
    if-nez v7, :cond_1b

    .line 415
    .line 416
    goto :goto_13

    .line 417
    :cond_1b
    invoke-static {v7}, Landroid/support/v4/media/session/b;->g(Ljava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    goto :goto_13

    .line 421
    :cond_1c
    const/16 v7, 0x15

    .line 422
    .line 423
    if-lt v13, v7, :cond_1e

    .line 424
    .line 425
    sget-boolean v7, Landroid/support/v4/media/session/b;->e:Z

    .line 426
    .line 427
    if-nez v7, :cond_1d

    .line 428
    .line 429
    :try_start_a
    invoke-virtual {v14, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 430
    .line 431
    .line 432
    move-result-object v7

    .line 433
    sput-object v7, Landroid/support/v4/media/session/b;->d:Ljava/lang/reflect/Field;
    :try_end_a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_a} :catch_a

    .line 434
    .line 435
    const/4 v12, 0x1

    .line 436
    :try_start_b
    invoke-virtual {v7, v12}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b .. :try_end_b} :catch_b

    .line 437
    .line 438
    .line 439
    goto :goto_11

    .line 440
    :catch_a
    const/4 v12, 0x1

    .line 441
    :catch_b
    :goto_11
    sput-boolean v12, Landroid/support/v4/media/session/b;->e:Z

    .line 442
    .line 443
    :cond_1d
    sget-object v7, Landroid/support/v4/media/session/b;->d:Ljava/lang/reflect/Field;

    .line 444
    .line 445
    if-eqz v7, :cond_1e

    .line 446
    .line 447
    :try_start_c
    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v7

    .line 451
    check-cast v7, Ljava/util/Map;
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_c

    .line 452
    .line 453
    goto :goto_12

    .line 454
    :catch_c
    nop

    .line 455
    const/4 v7, 0x0

    .line 456
    :goto_12
    if-eqz v7, :cond_1e

    .line 457
    .line 458
    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 459
    .line 460
    .line 461
    :cond_1e
    :goto_13
    iget v7, v0, Lq/a0;->Z:I

    .line 462
    .line 463
    if-eqz v7, :cond_1f

    .line 464
    .line 465
    invoke-virtual {v3, v7}, Landroid/content/Context;->setTheme(I)V

    .line 466
    .line 467
    .line 468
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 469
    .line 470
    if-lt v7, v15, :cond_1f

    .line 471
    .line 472
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 473
    .line 474
    .line 475
    move-result-object v7

    .line 476
    iget v8, v0, Lq/a0;->Z:I

    .line 477
    .line 478
    const/4 v12, 0x1

    .line 479
    invoke-virtual {v7, v8, v12}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 480
    .line 481
    .line 482
    goto :goto_14

    .line 483
    :cond_1f
    const/4 v12, 0x1

    .line 484
    :goto_14
    if-eqz v5, :cond_21

    .line 485
    .line 486
    instance-of v5, v9, Landroid/app/Activity;

    .line 487
    .line 488
    if-eqz v5, :cond_21

    .line 489
    .line 490
    move-object v5, v9

    .line 491
    check-cast v5, Landroid/app/Activity;

    .line 492
    .line 493
    instance-of v7, v5, Landroidx/lifecycle/t;

    .line 494
    .line 495
    if-eqz v7, :cond_20

    .line 496
    .line 497
    move-object v7, v5

    .line 498
    check-cast v7, Landroidx/lifecycle/t;

    .line 499
    .line 500
    invoke-interface {v7}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 501
    .line 502
    .line 503
    move-result-object v7

    .line 504
    check-cast v7, Landroidx/lifecycle/v;

    .line 505
    .line 506
    iget-object v7, v7, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 507
    .line 508
    sget-object v8, Landroidx/lifecycle/n;->c:Landroidx/lifecycle/n;

    .line 509
    .line 510
    invoke-virtual {v7, v8}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 511
    .line 512
    .line 513
    move-result v7

    .line 514
    if-ltz v7, :cond_21

    .line 515
    .line 516
    invoke-virtual {v5, v11}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 517
    .line 518
    .line 519
    goto :goto_15

    .line 520
    :cond_20
    iget-boolean v7, v0, Lq/a0;->T:Z

    .line 521
    .line 522
    if-eqz v7, :cond_21

    .line 523
    .line 524
    iget-boolean v7, v0, Lq/a0;->V:Z

    .line 525
    .line 526
    if-nez v7, :cond_21

    .line 527
    .line 528
    invoke-virtual {v5, v11}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 529
    .line 530
    .line 531
    :cond_21
    :goto_15
    const/4 v11, 0x1

    .line 532
    goto :goto_16

    .line 533
    :cond_22
    move v11, v8

    .line 534
    :goto_16
    if-eqz v11, :cond_24

    .line 535
    .line 536
    instance-of v5, v9, Lq/i;

    .line 537
    .line 538
    if-eqz v5, :cond_24

    .line 539
    .line 540
    and-int/lit16 v5, v6, 0x200

    .line 541
    .line 542
    if-eqz v5, :cond_23

    .line 543
    .line 544
    move-object v5, v9

    .line 545
    check-cast v5, Lq/i;

    .line 546
    .line 547
    :cond_23
    and-int/lit8 v5, v6, 0x4

    .line 548
    .line 549
    if-eqz v5, :cond_24

    .line 550
    .line 551
    check-cast v9, Lq/i;

    .line 552
    .line 553
    :cond_24
    if-eqz v11, :cond_26

    .line 554
    .line 555
    if-eqz v4, :cond_26

    .line 556
    .line 557
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 558
    .line 559
    .line 560
    move-result-object v4

    .line 561
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 562
    .line 563
    .line 564
    move-result-object v4

    .line 565
    invoke-static {v4}, Lq/a0;->x(Landroid/content/res/Configuration;)Lt0/j;

    .line 566
    .line 567
    .line 568
    move-result-object v4

    .line 569
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 570
    .line 571
    if-lt v5, v10, :cond_25

    .line 572
    .line 573
    invoke-static {v4}, Lq/u;->c(Lt0/j;)V

    .line 574
    .line 575
    .line 576
    goto :goto_17

    .line 577
    :cond_25
    iget-object v4, v4, Lt0/j;->a:Lt0/l;

    .line 578
    .line 579
    invoke-interface {v4, v2}, Lt0/l;->get(I)Ljava/util/Locale;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 584
    .line 585
    .line 586
    :cond_26
    :goto_17
    if-nez v1, :cond_27

    .line 587
    .line 588
    invoke-virtual {v0, v3}, Lq/a0;->w(Landroid/content/Context;)Lfe/c;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    invoke-virtual {v2}, Lfe/c;->h()V

    .line 593
    .line 594
    .line 595
    goto :goto_18

    .line 596
    :cond_27
    iget-object v2, v0, Lq/a0;->M0:Lq/x;

    .line 597
    .line 598
    if-eqz v2, :cond_28

    .line 599
    .line 600
    invoke-virtual {v2}, Lfe/c;->c()V

    .line 601
    .line 602
    .line 603
    :cond_28
    :goto_18
    const/4 v2, 0x3

    .line 604
    if-ne v1, v2, :cond_2a

    .line 605
    .line 606
    iget-object v1, v0, Lq/a0;->N0:Lq/x;

    .line 607
    .line 608
    if-nez v1, :cond_29

    .line 609
    .line 610
    new-instance v1, Lq/x;

    .line 611
    .line 612
    invoke-direct {v1, v0, v3}, Lq/x;-><init>(Lq/a0;Landroid/content/Context;)V

    .line 613
    .line 614
    .line 615
    iput-object v1, v0, Lq/a0;->N0:Lq/x;

    .line 616
    .line 617
    :cond_29
    iget-object v1, v0, Lq/a0;->N0:Lq/x;

    .line 618
    .line 619
    invoke-virtual {v1}, Lfe/c;->h()V

    .line 620
    .line 621
    .line 622
    goto :goto_19

    .line 623
    :cond_2a
    iget-object v1, v0, Lq/a0;->N0:Lq/x;

    .line 624
    .line 625
    if-eqz v1, :cond_2b

    .line 626
    .line 627
    invoke-virtual {v1}, Lfe/c;->c()V

    .line 628
    .line 629
    .line 630
    :cond_2b
    :goto_19
    return v11
.end method

.method public final m(Landroid/view/Window;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lq/a0;->l:Landroid/view/Window;

    .line 2
    .line 3
    const-string v1, "AppCompat has already installed itself into the Window"

    .line 4
    .line 5
    if-nez v0, :cond_6

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v2, v0, Lq/w;

    .line 12
    .line 13
    if-nez v2, :cond_5

    .line 14
    .line 15
    new-instance v1, Lq/w;

    .line 16
    .line 17
    invoke-direct {v1, p0, v0}, Lq/w;-><init>(Lq/a0;Landroid/view/Window$Callback;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lq/a0;->m:Lq/w;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lq/a0;->k:Landroid/content/Context;

    .line 26
    .line 27
    sget-object v1, Lq/a0;->a1:[I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    invoke-static {}, Lw/s;->a()Lw/s;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    monitor-enter v4

    .line 52
    :try_start_0
    iget-object v5, v4, Lw/s;->a:Lw/p2;

    .line 53
    .line 54
    const/4 v6, 0x1

    .line 55
    invoke-virtual {v5, v0, v3, v6}, Lw/p2;->g(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    .line 58
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit v4

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p1

    .line 64
    :cond_0
    move-object v0, v2

    .line 65
    :goto_0
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lq/a0;->l:Landroid/view/Window;

    .line 74
    .line 75
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 76
    .line 77
    const/16 v0, 0x21

    .line 78
    .line 79
    if-lt p1, v0, :cond_4

    .line 80
    .line 81
    iget-object p1, p0, Lq/a0;->W0:Landroid/window/OnBackInvokedDispatcher;

    .line 82
    .line 83
    if-nez p1, :cond_4

    .line 84
    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    iget-object v0, p0, Lq/a0;->X0:Landroid/window/OnBackInvokedCallback;

    .line 88
    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    invoke-static {p1, v0}, Lq/v;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iput-object v2, p0, Lq/a0;->X0:Landroid/window/OnBackInvokedCallback;

    .line 95
    .line 96
    :cond_2
    iget-object p1, p0, Lq/a0;->j:Ljava/lang/Object;

    .line 97
    .line 98
    instance-of v0, p1, Landroid/app/Activity;

    .line 99
    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    check-cast p1, Landroid/app/Activity;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    invoke-static {p1}, Lq/v;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lq/a0;->W0:Landroid/window/OnBackInvokedDispatcher;

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    iput-object v2, p0, Lq/a0;->W0:Landroid/window/OnBackInvokedDispatcher;

    .line 118
    .line 119
    :goto_1
    invoke-virtual {p0}, Lq/a0;->H()V

    .line 120
    .line 121
    .line 122
    :cond_4
    return-void

    .line 123
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 124
    .line 125
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1

    .line 129
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 130
    .line 131
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p1
.end method

.method public final o(ILq/z;Lv/k;)V
    .locals 3

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lq/a0;->O:[Lq/z;

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    if-ge p1, v1, :cond_0

    .line 11
    .line 12
    aget-object p2, v0, p1

    .line 13
    .line 14
    :cond_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    iget-object p3, p2, Lq/z;->h:Lv/k;

    .line 17
    .line 18
    :cond_1
    if-eqz p2, :cond_2

    .line 19
    .line 20
    iget-boolean p2, p2, Lq/z;->m:Z

    .line 21
    .line 22
    if-nez p2, :cond_2

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    iget-boolean p2, p0, Lq/a0;->V:Z

    .line 26
    .line 27
    if-nez p2, :cond_3

    .line 28
    .line 29
    iget-object p2, p0, Lq/a0;->m:Lq/w;

    .line 30
    .line 31
    iget-object v0, p0, Lq/a0;->l:Landroid/view/Window;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    const/4 v2, 0x0

    .line 42
    :try_start_0
    iput-boolean v1, p2, Lq/w;->d:Z

    .line 43
    .line 44
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    iput-boolean v2, p2, Lq/w;->d:Z

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    iput-boolean v2, p2, Lq/w;->d:Z

    .line 52
    .line 53
    throw p1

    .line 54
    :cond_3
    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p4

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1
    iget-object v9, v1, Lq/a0;->U0:Lq/d0;

    const/4 v10, 0x0

    if-nez v9, :cond_1

    .line 2
    sget-object v9, Lp/a;->j:[I

    iget-object v11, v1, Lq/a0;->k:Landroid/content/Context;

    invoke-virtual {v11, v9}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/16 v12, 0x74

    .line 3
    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    .line 4
    new-instance v9, Lq/d0;

    invoke-direct {v9}, Lq/d0;-><init>()V

    iput-object v9, v1, Lq/a0;->U0:Lq/d0;

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {v11}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 6
    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 7
    invoke-virtual {v9, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lq/d0;

    iput-object v9, v1, Lq/a0;->U0:Lq/d0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :catchall_0
    new-instance v9, Lq/d0;

    invoke-direct {v9}, Lq/d0;-><init>()V

    iput-object v9, v1, Lq/a0;->U0:Lq/d0;

    .line 9
    :cond_1
    :goto_0
    sget-boolean v9, Lq/a0;->Z0:Z

    if-eqz v9, :cond_d

    .line 10
    iget-object v11, v1, Lq/a0;->V0:Lj5/c;

    if-nez v11, :cond_2

    .line 11
    new-instance v11, Lj5/c;

    invoke-direct {v11, v8}, Lj5/c;-><init>(I)V

    iput-object v11, v1, Lq/a0;->V0:Lj5/c;

    .line 12
    :cond_2
    iget-object v11, v1, Lq/a0;->V0:Lj5/c;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    instance-of v12, v2, Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v12, :cond_7

    .line 14
    move-object v13, v2

    check-cast v13, Lorg/xmlpull/v1/XmlPullParser;

    .line 15
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-ne v14, v8, :cond_7

    .line 16
    iget-object v11, v11, Lj5/c;->a:Ljava/util/ArrayDeque;

    .line 17
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    .line 18
    invoke-interface {v11}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v14, :cond_3

    .line 19
    :try_start_1
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v15

    if-eq v15, v5, :cond_3

    .line 20
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v15
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v15, v8, :cond_5

    .line 21
    :catch_0
    :cond_3
    invoke-interface {v11}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move-object v14, v10

    .line 22
    :cond_5
    new-instance v15, Ljava/lang/ref/WeakReference;

    invoke-direct {v15, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v11, v15}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    if-eqz v14, :cond_6

    if-eq v13, v14, :cond_6

    .line 23
    :try_start_2
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    if-ne v11, v6, :cond_6

    .line 24
    const-string v11, "include"

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    nop

    :cond_6
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_7

    const/4 v11, 0x1

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_8

    :goto_4
    const/4 v11, 0x1

    goto :goto_7

    :cond_8
    if-eqz v12, :cond_9

    .line 25
    move-object v11, v2

    check-cast v11, Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v8, :cond_d

    goto :goto_4

    .line 26
    :cond_9
    move-object/from16 v11, p1

    check-cast v11, Landroid/view/ViewParent;

    if-nez v11, :cond_a

    goto :goto_6

    .line 27
    :cond_a
    iget-object v12, v1, Lq/a0;->l:Landroid/view/Window;

    invoke-virtual {v12}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v12

    :goto_5
    if-nez v11, :cond_b

    goto :goto_4

    :cond_b
    if-eq v11, v12, :cond_d

    .line 28
    instance-of v13, v11, Landroid/view/View;

    if-eqz v13, :cond_d

    move-object v13, v11

    check-cast v13, Landroid/view/View;

    .line 29
    invoke-static {v13}, Lx0/b1;->l(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_c

    goto :goto_6

    .line 30
    :cond_c
    invoke-interface {v11}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    goto :goto_5

    :cond_d
    :goto_6
    const/4 v11, 0x0

    .line 31
    :goto_7
    iget-object v12, v1, Lq/a0;->U0:Lq/d0;

    .line 32
    sget v13, Lw/s3;->b:I

    .line 33
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v11, :cond_e

    if-eqz p1, :cond_e

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    goto :goto_8

    :cond_e
    move-object/from16 v11, p3

    .line 35
    :goto_8
    sget-object v13, Lp/a;->y:[I

    invoke-virtual {v11, v2, v13, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v13

    if-eqz v9, :cond_f

    .line 36
    invoke-virtual {v13, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    goto :goto_9

    :cond_f
    const/4 v9, 0x0

    :goto_9
    if-nez v9, :cond_10

    .line 37
    invoke-virtual {v13, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 38
    :cond_10
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v9, :cond_12

    .line 39
    instance-of v13, v11, Lu/d;

    if-eqz v13, :cond_11

    move-object v13, v11

    check-cast v13, Lu/d;

    .line 40
    iget v13, v13, Lu/d;->a:I

    if-eq v13, v9, :cond_12

    .line 41
    :cond_11
    new-instance v13, Lu/d;

    invoke-direct {v13, v11, v9}, Lu/d;-><init>(Landroid/content/Context;I)V

    move-object v11, v13

    .line 42
    :cond_12
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :goto_a
    const/4 v4, -0x1

    goto/16 :goto_b

    :sswitch_0
    const-string v4, "Button"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto :goto_a

    :cond_13
    const/16 v4, 0xd

    goto/16 :goto_b

    :sswitch_1
    const-string v4, "EditText"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_a

    :cond_14
    const/16 v4, 0xc

    goto/16 :goto_b

    :sswitch_2
    const-string v4, "CheckBox"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto :goto_a

    :cond_15
    const/16 v4, 0xb

    goto/16 :goto_b

    :sswitch_3
    const-string v4, "AutoCompleteTextView"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto :goto_a

    :cond_16
    const/16 v4, 0xa

    goto/16 :goto_b

    :sswitch_4
    const-string v4, "ImageView"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_a

    :cond_17
    const/16 v4, 0x9

    goto/16 :goto_b

    :sswitch_5
    const-string v4, "ToggleButton"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto :goto_a

    :cond_18
    const/16 v4, 0x8

    goto :goto_b

    :sswitch_6
    const-string v4, "RadioButton"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_a

    :cond_19
    const/4 v4, 0x7

    goto :goto_b

    :sswitch_7
    const-string v4, "Spinner"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_a

    :cond_1a
    const/4 v4, 0x6

    goto :goto_b

    :sswitch_8
    const-string v4, "SeekBar"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_a

    :cond_1b
    const/4 v4, 0x5

    goto :goto_b

    :sswitch_9
    const-string v9, "ImageButton"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_20

    goto :goto_a

    :sswitch_a
    const-string v4, "TextView"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto/16 :goto_a

    :cond_1c
    const/4 v4, 0x3

    goto :goto_b

    :sswitch_b
    const-string v4, "MultiAutoCompleteTextView"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    goto/16 :goto_a

    :cond_1d
    const/4 v4, 0x2

    goto :goto_b

    :sswitch_c
    const-string v4, "CheckedTextView"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    goto/16 :goto_a

    :cond_1e
    const/4 v4, 0x1

    goto :goto_b

    :sswitch_d
    const-string v4, "RatingBar"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    goto/16 :goto_a

    :cond_1f
    const/4 v4, 0x0

    :cond_20
    :goto_b
    packed-switch v4, :pswitch_data_0

    move-object v4, v10

    goto :goto_c

    .line 43
    :pswitch_0
    invoke-virtual {v12, v11, v2}, Lq/d0;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Lw/o;

    move-result-object v4

    goto :goto_c

    .line 44
    :pswitch_1
    new-instance v4, Lw/u;

    .line 45
    invoke-direct {v4, v11, v2}, Lw/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_c

    .line 46
    :pswitch_2
    invoke-virtual {v12, v11, v2}, Lq/d0;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Lw/p;

    move-result-object v4

    goto :goto_c

    .line 47
    :pswitch_3
    invoke-virtual {v12, v11, v2}, Lq/d0;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lw/n;

    move-result-object v4

    goto :goto_c

    .line 48
    :pswitch_4
    new-instance v4, Lw/x;

    .line 49
    invoke-direct {v4, v11, v2, v7}, Lw/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_c

    .line 50
    :pswitch_5
    new-instance v4, Lw/j1;

    invoke-direct {v4, v11, v2}, Lw/j1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_c

    .line 51
    :pswitch_6
    invoke-virtual {v12, v11, v2}, Lq/d0;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Lw/c0;

    move-result-object v4

    goto :goto_c

    .line 52
    :pswitch_7
    new-instance v4, Lw/q0;

    invoke-direct {v4, v11, v2}, Lw/q0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_c

    .line 53
    :pswitch_8
    new-instance v4, Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-direct {v4, v11, v2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_c

    .line 54
    :pswitch_9
    new-instance v4, Lw/w;

    const v9, 0x7f0402cc

    .line 55
    invoke-direct {v4, v11, v2, v9}, Lw/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_c

    .line 56
    :pswitch_a
    invoke-virtual {v12, v11, v2}, Lq/d0;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Lw/b1;

    move-result-object v4

    goto :goto_c

    .line 57
    :pswitch_b
    new-instance v4, Lw/y;

    invoke-direct {v4, v11, v2}, Lw/y;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_c

    .line 58
    :pswitch_c
    new-instance v4, Lw/q;

    invoke-direct {v4, v11, v2}, Lw/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_c

    .line 59
    :pswitch_d
    new-instance v4, Lw/d0;

    invoke-direct {v4, v11, v2}, Lw/d0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_c
    if-nez v4, :cond_25

    move-object/from16 v9, p3

    if-eq v9, v11, :cond_25

    .line 60
    iget-object v4, v12, Lq/d0;->a:[Ljava/lang/Object;

    const-string v9, "view"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 61
    const-string v0, "class"

    invoke-interface {v2, v10, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    :cond_21
    :try_start_3
    aput-object v11, v4, v7

    .line 63
    aput-object v2, v4, v8

    const/16 v9, 0x2e

    .line 64
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ne v3, v9, :cond_24

    const/4 v3, 0x0

    .line 65
    :goto_d
    sget-object v9, Lq/d0;->g:[Ljava/lang/String;

    if-ge v3, v5, :cond_23

    .line 66
    aget-object v9, v9, v3

    invoke-virtual {v12, v11, v0, v9}, Lq/d0;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v9, :cond_22

    .line 67
    aput-object v10, v4, v7

    .line 68
    aput-object v10, v4, v8

    move-object v10, v9

    goto :goto_f

    :cond_22
    add-int/2addr v3, v8

    goto :goto_d

    :catchall_1
    move-exception v0

    goto :goto_e

    .line 69
    :cond_23
    aput-object v10, v4, v7

    .line 70
    aput-object v10, v4, v8

    goto :goto_f

    .line 71
    :cond_24
    :try_start_4
    invoke-virtual {v12, v11, v0, v10}, Lq/d0;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 72
    aput-object v10, v4, v7

    .line 73
    aput-object v10, v4, v8

    move-object v10, v0

    goto :goto_f

    .line 74
    :goto_e
    aput-object v10, v4, v7

    .line 75
    aput-object v10, v4, v8

    .line 76
    throw v0

    .line 77
    :catch_2
    aput-object v10, v4, v7

    .line 78
    aput-object v10, v4, v8

    :goto_f
    move-object v4, v10

    :cond_25
    if-eqz v4, :cond_2d

    .line 79
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    instance-of v3, v0, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_28

    .line 81
    sget-object v3, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 82
    invoke-static {v4}, Lx0/i0;->a(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_10

    .line 83
    :cond_26
    sget-object v3, Lq/d0;->c:[I

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 85
    new-instance v5, Lq/c0;

    invoke-direct {v5, v4, v3}, Lq/c0;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :cond_27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    :cond_28
    :goto_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_2d

    const/16 v3, 0x1c

    if-le v0, v3, :cond_29

    goto :goto_11

    .line 88
    :cond_29
    sget-object v0, Lq/d0;->d:[I

    invoke-virtual {v11, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 90
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    sget-object v5, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 91
    new-instance v5, Lx0/g0;

    invoke-direct {v5, v6}, Lx0/g0;-><init>(I)V

    .line 92
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Lh1/c;->f(Landroid/view/View;Ljava/lang/Object;)V

    .line 93
    :cond_2a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    sget-object v0, Lq/d0;->e:[I

    invoke-virtual {v11, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 96
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lx0/b1;->z(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 97
    :cond_2b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    sget-object v0, Lq/d0;->f:[I

    invoke-virtual {v11, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 100
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 101
    sget-object v3, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 102
    new-instance v3, Lx0/g0;

    invoke-direct {v3, v7}, Lx0/g0;-><init>(I)V

    .line 103
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lh1/c;->f(Landroid/view/View;Ljava/lang/Object;)V

    .line 104
    :cond_2c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2d
    :goto_11
    return-object v4

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0, p1, p2, p3}, Lq/a0;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final p(Lv/k;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lq/a0;->N:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lq/a0;->N:Z

    .line 8
    .line 9
    iget-object v0, p0, Lq/a0;->s:Lw/l1;

    .line 10
    .line 11
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lw/m1;

    .line 17
    .line 18
    check-cast v0, Lw/n3;

    .line 19
    .line 20
    iget-object v0, v0, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 21
    .line 22
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->v:Lw/j;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lw/j;->h()Z

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Lw/j;->v:Lw/e;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Lv/v;->b()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    iget-object v0, v0, Lv/v;->i:Lv/s;

    .line 44
    .line 45
    invoke-interface {v0}, Lv/b0;->dismiss()V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lq/a0;->l:Landroid/view/Window;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget-boolean v1, p0, Lq/a0;->V:Z

    .line 57
    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    const/16 v1, 0x6c

    .line 61
    .line 62
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lq/a0;->N:Z

    .line 67
    .line 68
    return-void
.end method

.method public final q(Lq/z;Z)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget v0, p1, Lq/z;->a:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lq/a0;->s:Lw/l1;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lw/m1;

    .line 17
    .line 18
    check-cast v0, Lw/n3;

    .line 19
    .line 20
    iget-object v0, v0, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 21
    .line 22
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->v:Lw/j;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Lw/j;->k()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object p1, p1, Lq/z;->h:Lv/k;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lq/a0;->p(Lv/k;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lq/a0;->k:Landroid/content/Context;

    .line 43
    .line 44
    const-string v1, "window"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/view/WindowManager;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-boolean v2, p1, Lq/z;->m:Z

    .line 56
    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    iget-object v2, p1, Lq/z;->e:Lq/y;

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    if-eqz p2, :cond_1

    .line 67
    .line 68
    iget p2, p1, Lq/z;->a:I

    .line 69
    .line 70
    invoke-virtual {p0, p2, p1, v1}, Lq/a0;->o(ILq/z;Lv/k;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    const/4 p2, 0x0

    .line 74
    iput-boolean p2, p1, Lq/z;->k:Z

    .line 75
    .line 76
    iput-boolean p2, p1, Lq/z;->l:Z

    .line 77
    .line 78
    iput-boolean p2, p1, Lq/z;->m:Z

    .line 79
    .line 80
    iput-object v1, p1, Lq/z;->f:Landroid/view/View;

    .line 81
    .line 82
    const/4 p2, 0x1

    .line 83
    iput-boolean p2, p1, Lq/z;->n:Z

    .line 84
    .line 85
    iget-object p2, p0, Lq/a0;->P:Lq/z;

    .line 86
    .line 87
    if-ne p2, p1, :cond_2

    .line 88
    .line 89
    iput-object v1, p0, Lq/a0;->P:Lq/z;

    .line 90
    .line 91
    :cond_2
    iget p1, p1, Lq/z;->a:I

    .line 92
    .line 93
    if-nez p1, :cond_3

    .line 94
    .line 95
    invoke-virtual {p0}, Lq/a0;->H()V

    .line 96
    .line 97
    .line 98
    :cond_3
    return-void
.end method

.method public final s(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lq/a0;->j:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lx0/o;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    instance-of v0, v0, Lq/g;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lq/a0;->l:Landroid/view/Window;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {v0, p1}, Landroid/support/v4/media/session/b;->d(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x0

    .line 32
    const/16 v3, 0x52

    .line 33
    .line 34
    if-ne v0, v3, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lq/a0;->m:Lq/w;

    .line 37
    .line 38
    iget-object v4, p0, Lq/a0;->l:Landroid/view/Window;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    :try_start_0
    iput-boolean v2, v0, Lq/w;->c:Z

    .line 48
    .line 49
    invoke-interface {v4, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 50
    .line 51
    .line 52
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iput-boolean v1, v0, Lq/w;->c:Z

    .line 54
    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    return v2

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    iput-boolean v1, v0, Lq/w;->c:Z

    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    const/4 v5, 0x4

    .line 71
    if-nez v4, :cond_7

    .line 72
    .line 73
    if-eq v0, v5, :cond_4

    .line 74
    .line 75
    if-eq v0, v3, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_11

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Lq/a0;->y(I)Lq/z;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-boolean v1, v0, Lq/z;->m:Z

    .line 89
    .line 90
    if-nez v1, :cond_11

    .line 91
    .line 92
    invoke-virtual {p0, v0, p1}, Lq/a0;->F(Lq/z;Landroid/view/KeyEvent;)Z

    .line 93
    .line 94
    .line 95
    goto/16 :goto_7

    .line 96
    .line 97
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    and-int/lit16 p1, p1, 0x80

    .line 102
    .line 103
    if-eqz p1, :cond_5

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    const/4 v2, 0x0

    .line 107
    :goto_0
    iput-boolean v2, p0, Lq/a0;->R:Z

    .line 108
    .line 109
    :cond_6
    :goto_1
    const/4 v2, 0x0

    .line 110
    goto/16 :goto_7

    .line 111
    .line 112
    :cond_7
    if-eq v0, v5, :cond_10

    .line 113
    .line 114
    if-eq v0, v3, :cond_8

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_8
    iget-object v0, p0, Lq/a0;->w:Lu/a;

    .line 118
    .line 119
    if-eqz v0, :cond_9

    .line 120
    .line 121
    goto/16 :goto_7

    .line 122
    .line 123
    :cond_9
    invoke-virtual {p0, v1}, Lq/a0;->y(I)Lq/z;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v3, p0, Lq/a0;->s:Lw/l1;

    .line 128
    .line 129
    iget-object v4, p0, Lq/a0;->k:Landroid/content/Context;

    .line 130
    .line 131
    if-eqz v3, :cond_b

    .line 132
    .line 133
    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 134
    .line 135
    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 136
    .line 137
    .line 138
    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lw/m1;

    .line 139
    .line 140
    check-cast v3, Lw/n3;

    .line 141
    .line 142
    iget-object v3, v3, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 143
    .line 144
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-nez v5, :cond_b

    .line 149
    .line 150
    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 151
    .line 152
    if-eqz v3, :cond_b

    .line 153
    .line 154
    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView;->t:Z

    .line 155
    .line 156
    if-eqz v3, :cond_b

    .line 157
    .line 158
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-nez v3, :cond_b

    .line 167
    .line 168
    iget-object v3, p0, Lq/a0;->s:Lw/l1;

    .line 169
    .line 170
    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 171
    .line 172
    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 173
    .line 174
    .line 175
    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lw/m1;

    .line 176
    .line 177
    check-cast v3, Lw/n3;

    .line 178
    .line 179
    iget-object v3, v3, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 180
    .line 181
    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 182
    .line 183
    if-eqz v3, :cond_a

    .line 184
    .line 185
    iget-object v3, v3, Landroidx/appcompat/widget/ActionMenuView;->v:Lw/j;

    .line 186
    .line 187
    if-eqz v3, :cond_a

    .line 188
    .line 189
    invoke-virtual {v3}, Lw/j;->k()Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-eqz v3, :cond_a

    .line 194
    .line 195
    iget-object p1, p0, Lq/a0;->s:Lw/l1;

    .line 196
    .line 197
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 198
    .line 199
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 200
    .line 201
    .line 202
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lw/m1;

    .line 203
    .line 204
    check-cast p1, Lw/n3;

    .line 205
    .line 206
    iget-object p1, p1, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 207
    .line 208
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 209
    .line 210
    if-eqz p1, :cond_e

    .line 211
    .line 212
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->v:Lw/j;

    .line 213
    .line 214
    if-eqz p1, :cond_e

    .line 215
    .line 216
    invoke-virtual {p1}, Lw/j;->h()Z

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    if-eqz p1, :cond_e

    .line 221
    .line 222
    :goto_2
    goto :goto_4

    .line 223
    :cond_a
    iget-boolean v3, p0, Lq/a0;->V:Z

    .line 224
    .line 225
    if-nez v3, :cond_e

    .line 226
    .line 227
    invoke-virtual {p0, v0, p1}, Lq/a0;->F(Lq/z;Landroid/view/KeyEvent;)Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    if-eqz p1, :cond_e

    .line 232
    .line 233
    iget-object p1, p0, Lq/a0;->s:Lw/l1;

    .line 234
    .line 235
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 236
    .line 237
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 238
    .line 239
    .line 240
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lw/m1;

    .line 241
    .line 242
    check-cast p1, Lw/n3;

    .line 243
    .line 244
    iget-object p1, p1, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 245
    .line 246
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 247
    .line 248
    if-eqz p1, :cond_e

    .line 249
    .line 250
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->v:Lw/j;

    .line 251
    .line 252
    if-eqz p1, :cond_e

    .line 253
    .line 254
    invoke-virtual {p1}, Lw/j;->l()Z

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    if-eqz p1, :cond_e

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_b
    iget-boolean v3, v0, Lq/z;->m:Z

    .line 262
    .line 263
    if-nez v3, :cond_f

    .line 264
    .line 265
    iget-boolean v5, v0, Lq/z;->l:Z

    .line 266
    .line 267
    if-eqz v5, :cond_c

    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_c
    iget-boolean v3, v0, Lq/z;->k:Z

    .line 271
    .line 272
    if-eqz v3, :cond_e

    .line 273
    .line 274
    iget-boolean v3, v0, Lq/z;->o:Z

    .line 275
    .line 276
    if-eqz v3, :cond_d

    .line 277
    .line 278
    iput-boolean v1, v0, Lq/z;->k:Z

    .line 279
    .line 280
    invoke-virtual {p0, v0, p1}, Lq/a0;->F(Lq/z;Landroid/view/KeyEvent;)Z

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    goto :goto_3

    .line 285
    :cond_d
    const/4 v3, 0x1

    .line 286
    :goto_3
    if-eqz v3, :cond_e

    .line 287
    .line 288
    invoke-virtual {p0, v0, p1}, Lq/a0;->D(Lq/z;Landroid/view/KeyEvent;)V

    .line 289
    .line 290
    .line 291
    :goto_4
    const/4 p1, 0x1

    .line 292
    goto :goto_6

    .line 293
    :cond_e
    const/4 p1, 0x0

    .line 294
    goto :goto_6

    .line 295
    :cond_f
    :goto_5
    invoke-virtual {p0, v0, v2}, Lq/a0;->q(Lq/z;Z)V

    .line 296
    .line 297
    .line 298
    move p1, v3

    .line 299
    :goto_6
    if-eqz p1, :cond_11

    .line 300
    .line 301
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    const-string v0, "audio"

    .line 306
    .line 307
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    check-cast p1, Landroid/media/AudioManager;

    .line 312
    .line 313
    if-eqz p1, :cond_11

    .line 314
    .line 315
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 316
    .line 317
    .line 318
    goto :goto_7

    .line 319
    :cond_10
    invoke-virtual {p0}, Lq/a0;->C()Z

    .line 320
    .line 321
    .line 322
    move-result p1

    .line 323
    if-eqz p1, :cond_6

    .line 324
    .line 325
    :cond_11
    :goto_7
    return v2
.end method

.method public final t(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lq/a0;->y(I)Lq/z;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lq/z;->h:Lv/k;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    new-instance v1, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Lq/z;->h:Lv/k;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Lv/k;->t(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-lez v2, :cond_0

    .line 24
    .line 25
    iput-object v1, v0, Lq/z;->p:Landroid/os/Bundle;

    .line 26
    .line 27
    :cond_0
    iget-object v1, v0, Lq/z;->h:Lv/k;

    .line 28
    .line 29
    invoke-virtual {v1}, Lv/k;->w()V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lq/z;->h:Lv/k;

    .line 33
    .line 34
    invoke-virtual {v1}, Lv/k;->clear()V

    .line 35
    .line 36
    .line 37
    :cond_1
    const/4 v1, 0x1

    .line 38
    iput-boolean v1, v0, Lq/z;->o:Z

    .line 39
    .line 40
    iput-boolean v1, v0, Lq/z;->n:Z

    .line 41
    .line 42
    const/16 v0, 0x6c

    .line 43
    .line 44
    if-eq p1, v0, :cond_2

    .line 45
    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    :cond_2
    iget-object p1, p0, Lq/a0;->s:Lw/l1;

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lq/a0;->y(I)Lq/z;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-boolean p1, v0, Lq/z;->k:Z

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, v0, p1}, Lq/a0;->F(Lq/z;Landroid/view/KeyEvent;)Z

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method public final u()V
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-boolean v3, p0, Lq/a0;->B:Z

    .line 5
    .line 6
    if-nez v3, :cond_1d

    .line 7
    .line 8
    sget-object v3, Lp/a;->j:[I

    .line 9
    .line 10
    iget-object v4, p0, Lq/a0;->k:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v4, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    const/16 v6, 0x75

    .line 17
    .line 18
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    if-eqz v7, :cond_1c

    .line 23
    .line 24
    const/16 v7, 0x7e

    .line 25
    .line 26
    invoke-virtual {v5, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    const/16 v8, 0x6c

    .line 31
    .line 32
    if-eqz v7, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lq/a0;->g(I)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v5, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0, v8}, Lq/a0;->g(I)Z

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    const/16 v6, 0x76

    .line 48
    .line 49
    invoke-virtual {v5, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    const/16 v7, 0x6d

    .line 54
    .line 55
    if-eqz v6, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0, v7}, Lq/a0;->g(I)Z

    .line 58
    .line 59
    .line 60
    :cond_2
    const/16 v6, 0x77

    .line 61
    .line 62
    invoke-virtual {v5, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_3

    .line 67
    .line 68
    const/16 v6, 0xa

    .line 69
    .line 70
    invoke-virtual {p0, v6}, Lq/a0;->g(I)Z

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-virtual {v5, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    iput-boolean v6, p0, Lq/a0;->L:Z

    .line 78
    .line 79
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lq/a0;->v()V

    .line 83
    .line 84
    .line 85
    iget-object v5, p0, Lq/a0;->l:Landroid/view/Window;

    .line 86
    .line 87
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 88
    .line 89
    .line 90
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    iget-boolean v6, p0, Lq/a0;->M:Z

    .line 95
    .line 96
    const/4 v9, 0x0

    .line 97
    if-nez v6, :cond_9

    .line 98
    .line 99
    iget-boolean v6, p0, Lq/a0;->L:Z

    .line 100
    .line 101
    if-eqz v6, :cond_4

    .line 102
    .line 103
    const v6, 0x7f0e000c

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    check-cast v5, Landroid/view/ViewGroup;

    .line 111
    .line 112
    iput-boolean v2, p0, Lq/a0;->I:Z

    .line 113
    .line 114
    iput-boolean v2, p0, Lq/a0;->H:Z

    .line 115
    .line 116
    goto/16 :goto_2

    .line 117
    .line 118
    :cond_4
    iget-boolean v5, p0, Lq/a0;->H:Z

    .line 119
    .line 120
    if-eqz v5, :cond_8

    .line 121
    .line 122
    new-instance v5, Landroid/util/TypedValue;

    .line 123
    .line 124
    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    const v10, 0x7f04000c

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, v10, v5, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 135
    .line 136
    .line 137
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    .line 138
    .line 139
    if-eqz v6, :cond_5

    .line 140
    .line 141
    new-instance v6, Lu/d;

    .line 142
    .line 143
    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    .line 144
    .line 145
    invoke-direct {v6, v4, v5}, Lu/d;-><init>(Landroid/content/Context;I)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_5
    move-object v6, v4

    .line 150
    :goto_1
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    const v6, 0x7f0e0017

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    check-cast v5, Landroid/view/ViewGroup;

    .line 162
    .line 163
    const v6, 0x7f0b00c8

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    check-cast v6, Lw/l1;

    .line 171
    .line 172
    iput-object v6, p0, Lq/a0;->s:Lw/l1;

    .line 173
    .line 174
    iget-object v10, p0, Lq/a0;->l:Landroid/view/Window;

    .line 175
    .line 176
    invoke-virtual {v10}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    invoke-interface {v6, v10}, Lw/l1;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 181
    .line 182
    .line 183
    iget-boolean v6, p0, Lq/a0;->I:Z

    .line 184
    .line 185
    if-eqz v6, :cond_6

    .line 186
    .line 187
    iget-object v6, p0, Lq/a0;->s:Lw/l1;

    .line 188
    .line 189
    check-cast v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 190
    .line 191
    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    .line 192
    .line 193
    .line 194
    :cond_6
    iget-boolean v6, p0, Lq/a0;->F:Z

    .line 195
    .line 196
    if-eqz v6, :cond_7

    .line 197
    .line 198
    iget-object v6, p0, Lq/a0;->s:Lw/l1;

    .line 199
    .line 200
    check-cast v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 201
    .line 202
    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    .line 203
    .line 204
    .line 205
    :cond_7
    iget-boolean v6, p0, Lq/a0;->G:Z

    .line 206
    .line 207
    if-eqz v6, :cond_b

    .line 208
    .line 209
    iget-object v6, p0, Lq/a0;->s:Lw/l1;

    .line 210
    .line 211
    const/4 v7, 0x5

    .line 212
    check-cast v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 213
    .line 214
    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_8
    move-object v5, v9

    .line 219
    goto :goto_2

    .line 220
    :cond_9
    iget-boolean v6, p0, Lq/a0;->K:Z

    .line 221
    .line 222
    if-eqz v6, :cond_a

    .line 223
    .line 224
    const v6, 0x7f0e0016

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    check-cast v5, Landroid/view/ViewGroup;

    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_a
    const v6, 0x7f0e0015

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    check-cast v5, Landroid/view/ViewGroup;

    .line 242
    .line 243
    :cond_b
    :goto_2
    if-eqz v5, :cond_1b

    .line 244
    .line 245
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 246
    .line 247
    const/16 v7, 0x15

    .line 248
    .line 249
    if-lt v6, v7, :cond_c

    .line 250
    .line 251
    new-instance v6, Lq/p;

    .line 252
    .line 253
    invoke-direct {v6, p0, v2}, Lq/p;-><init>(Lq/a0;I)V

    .line 254
    .line 255
    .line 256
    invoke-static {v5, v6}, Lx0/b1;->C(Landroid/view/View;Lx0/x;)V

    .line 257
    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_c
    instance-of v6, v5, Lw/v1;

    .line 261
    .line 262
    if-eqz v6, :cond_d

    .line 263
    .line 264
    move-object v6, v5

    .line 265
    check-cast v6, Lw/v1;

    .line 266
    .line 267
    new-instance v7, Lq/p;

    .line 268
    .line 269
    invoke-direct {v7, p0, v1}, Lq/p;-><init>(Lq/a0;I)V

    .line 270
    .line 271
    .line 272
    invoke-interface {v6, v7}, Lw/v1;->setOnFitSystemWindowsListener(Lw/u1;)V

    .line 273
    .line 274
    .line 275
    :cond_d
    :goto_3
    iget-object v6, p0, Lq/a0;->s:Lw/l1;

    .line 276
    .line 277
    if-nez v6, :cond_e

    .line 278
    .line 279
    const v6, 0x7f0b02f8

    .line 280
    .line 281
    .line 282
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    check-cast v6, Landroid/widget/TextView;

    .line 287
    .line 288
    iput-object v6, p0, Lq/a0;->D:Landroid/widget/TextView;

    .line 289
    .line 290
    :cond_e
    sget-object v6, Lw/u3;->a:Ljava/lang/reflect/Method;

    .line 291
    .line 292
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    const-string v7, "makeOptionalFitsSystemWindows"

    .line 297
    .line 298
    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    invoke-virtual {v6}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 303
    .line 304
    .line 305
    move-result v7

    .line 306
    if-nez v7, :cond_f

    .line 307
    .line 308
    invoke-virtual {v6, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 309
    .line 310
    .line 311
    goto :goto_4

    .line 312
    :catch_0
    nop

    .line 313
    goto :goto_5

    .line 314
    :cond_f
    :goto_4
    invoke-virtual {v6, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .line 316
    .line 317
    :goto_5
    const v6, 0x7f0b0041

    .line 318
    .line 319
    .line 320
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 321
    .line 322
    .line 323
    move-result-object v6

    .line 324
    check-cast v6, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 325
    .line 326
    iget-object v7, p0, Lq/a0;->l:Landroid/view/Window;

    .line 327
    .line 328
    const v10, 0x1020002

    .line 329
    .line 330
    .line 331
    invoke-virtual {v7, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    check-cast v7, Landroid/view/ViewGroup;

    .line 336
    .line 337
    if-eqz v7, :cond_11

    .line 338
    .line 339
    :goto_6
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    .line 340
    .line 341
    .line 342
    move-result v11

    .line 343
    if-lez v11, :cond_10

    .line 344
    .line 345
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 346
    .line 347
    .line 348
    move-result-object v11

    .line 349
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 353
    .line 354
    .line 355
    goto :goto_6

    .line 356
    :cond_10
    const/4 v11, -0x1

    .line 357
    invoke-virtual {v7, v11}, Landroid/view/View;->setId(I)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v6, v10}, Landroid/view/View;->setId(I)V

    .line 361
    .line 362
    .line 363
    instance-of v11, v7, Landroid/widget/FrameLayout;

    .line 364
    .line 365
    if-eqz v11, :cond_11

    .line 366
    .line 367
    check-cast v7, Landroid/widget/FrameLayout;

    .line 368
    .line 369
    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 370
    .line 371
    .line 372
    :cond_11
    iget-object v7, p0, Lq/a0;->l:Landroid/view/Window;

    .line 373
    .line 374
    invoke-virtual {v7, v5}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 375
    .line 376
    .line 377
    new-instance v7, Lq/p;

    .line 378
    .line 379
    invoke-direct {v7, p0, v0}, Lq/p;-><init>(Lq/a0;I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Lw/k1;)V

    .line 383
    .line 384
    .line 385
    iput-object v5, p0, Lq/a0;->C:Landroid/view/ViewGroup;

    .line 386
    .line 387
    iget-object v0, p0, Lq/a0;->j:Ljava/lang/Object;

    .line 388
    .line 389
    instance-of v5, v0, Landroid/app/Activity;

    .line 390
    .line 391
    if-eqz v5, :cond_12

    .line 392
    .line 393
    check-cast v0, Landroid/app/Activity;

    .line 394
    .line 395
    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    goto :goto_7

    .line 400
    :cond_12
    iget-object v0, p0, Lq/a0;->r:Ljava/lang/CharSequence;

    .line 401
    .line 402
    :goto_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 403
    .line 404
    .line 405
    move-result v5

    .line 406
    if-nez v5, :cond_15

    .line 407
    .line 408
    iget-object v5, p0, Lq/a0;->s:Lw/l1;

    .line 409
    .line 410
    if-eqz v5, :cond_13

    .line 411
    .line 412
    invoke-interface {v5, v0}, Lw/l1;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 413
    .line 414
    .line 415
    goto :goto_8

    .line 416
    :cond_13
    iget-object v5, p0, Lq/a0;->p:Lq/m0;

    .line 417
    .line 418
    if-eqz v5, :cond_14

    .line 419
    .line 420
    iget-object v5, v5, Lq/m0;->f:Lw/m1;

    .line 421
    .line 422
    check-cast v5, Lw/n3;

    .line 423
    .line 424
    iget-boolean v6, v5, Lw/n3;->g:Z

    .line 425
    .line 426
    if-nez v6, :cond_15

    .line 427
    .line 428
    iput-object v0, v5, Lw/n3;->h:Ljava/lang/CharSequence;

    .line 429
    .line 430
    iget v6, v5, Lw/n3;->b:I

    .line 431
    .line 432
    and-int/lit8 v6, v6, 0x8

    .line 433
    .line 434
    if-eqz v6, :cond_15

    .line 435
    .line 436
    iget-object v6, v5, Lw/n3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 437
    .line 438
    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 439
    .line 440
    .line 441
    iget-boolean v5, v5, Lw/n3;->g:Z

    .line 442
    .line 443
    if-eqz v5, :cond_15

    .line 444
    .line 445
    invoke-virtual {v6}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 446
    .line 447
    .line 448
    move-result-object v5

    .line 449
    invoke-static {v5, v0}, Lx0/b1;->z(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 450
    .line 451
    .line 452
    goto :goto_8

    .line 453
    :cond_14
    iget-object v5, p0, Lq/a0;->D:Landroid/widget/TextView;

    .line 454
    .line 455
    if-eqz v5, :cond_15

    .line 456
    .line 457
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    .line 459
    .line 460
    :cond_15
    :goto_8
    iget-object v0, p0, Lq/a0;->C:Landroid/view/ViewGroup;

    .line 461
    .line 462
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 467
    .line 468
    iget-object v5, p0, Lq/a0;->l:Landroid/view/Window;

    .line 469
    .line 470
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    .line 475
    .line 476
    .line 477
    move-result v6

    .line 478
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    .line 479
    .line 480
    .line 481
    move-result v7

    .line 482
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    .line 483
    .line 484
    .line 485
    move-result v9

    .line 486
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    .line 487
    .line 488
    .line 489
    move-result v5

    .line 490
    iget-object v10, v0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/graphics/Rect;

    .line 491
    .line 492
    invoke-virtual {v10, v6, v7, v9, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 493
    .line 494
    .line 495
    invoke-static {v0}, Lx0/b1;->m(Landroid/view/View;)Z

    .line 496
    .line 497
    .line 498
    move-result v5

    .line 499
    if-eqz v5, :cond_16

    .line 500
    .line 501
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 502
    .line 503
    .line 504
    :cond_16
    invoke-virtual {v4, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    const/16 v4, 0x7c

    .line 509
    .line 510
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    .line 511
    .line 512
    .line 513
    move-result-object v5

    .line 514
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 515
    .line 516
    .line 517
    const/16 v4, 0x7d

    .line 518
    .line 519
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    .line 520
    .line 521
    .line 522
    move-result-object v5

    .line 523
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 524
    .line 525
    .line 526
    const/16 v4, 0x7a

    .line 527
    .line 528
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 529
    .line 530
    .line 531
    move-result v5

    .line 532
    if-eqz v5, :cond_17

    .line 533
    .line 534
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    .line 535
    .line 536
    .line 537
    move-result-object v5

    .line 538
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 539
    .line 540
    .line 541
    :cond_17
    const/16 v4, 0x7b

    .line 542
    .line 543
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 544
    .line 545
    .line 546
    move-result v5

    .line 547
    if-eqz v5, :cond_18

    .line 548
    .line 549
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    .line 550
    .line 551
    .line 552
    move-result-object v5

    .line 553
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 554
    .line 555
    .line 556
    :cond_18
    const/16 v4, 0x78

    .line 557
    .line 558
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 559
    .line 560
    .line 561
    move-result v5

    .line 562
    if-eqz v5, :cond_19

    .line 563
    .line 564
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    .line 565
    .line 566
    .line 567
    move-result-object v5

    .line 568
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 569
    .line 570
    .line 571
    :cond_19
    const/16 v4, 0x79

    .line 572
    .line 573
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 574
    .line 575
    .line 576
    move-result v5

    .line 577
    if-eqz v5, :cond_1a

    .line 578
    .line 579
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    .line 580
    .line 581
    .line 582
    move-result-object v5

    .line 583
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 584
    .line 585
    .line 586
    :cond_1a
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 590
    .line 591
    .line 592
    iput-boolean v1, p0, Lq/a0;->B:Z

    .line 593
    .line 594
    invoke-virtual {p0, v2}, Lq/a0;->y(I)Lq/z;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    iget-boolean v1, p0, Lq/a0;->V:Z

    .line 599
    .line 600
    if-nez v1, :cond_1d

    .line 601
    .line 602
    iget-object v0, v0, Lq/z;->h:Lv/k;

    .line 603
    .line 604
    if-nez v0, :cond_1d

    .line 605
    .line 606
    invoke-virtual {p0, v8}, Lq/a0;->A(I)V

    .line 607
    .line 608
    .line 609
    goto :goto_9

    .line 610
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 611
    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    .line 613
    .line 614
    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    .line 615
    .line 616
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    iget-boolean v2, p0, Lq/a0;->H:Z

    .line 620
    .line 621
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    const-string v2, ", windowActionBarOverlay: "

    .line 625
    .line 626
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    iget-boolean v2, p0, Lq/a0;->I:Z

    .line 630
    .line 631
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    const-string v2, ", android:windowIsFloating: "

    .line 635
    .line 636
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    iget-boolean v2, p0, Lq/a0;->L:Z

    .line 640
    .line 641
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    const-string v2, ", windowActionModeOverlay: "

    .line 645
    .line 646
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    iget-boolean v2, p0, Lq/a0;->K:Z

    .line 650
    .line 651
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    const-string v2, ", windowNoTitle: "

    .line 655
    .line 656
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    iget-boolean v2, p0, Lq/a0;->M:Z

    .line 660
    .line 661
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    const-string v2, " }"

    .line 665
    .line 666
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v1

    .line 673
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    throw v0

    .line 677
    :cond_1c
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 678
    .line 679
    .line 680
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 681
    .line 682
    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    .line 683
    .line 684
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    throw v0

    .line 688
    :cond_1d
    :goto_9
    return-void
.end method

.method public final v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq/a0;->l:Landroid/view/Window;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lq/a0;->j:Ljava/lang/Object;

    .line 6
    .line 7
    instance-of v1, v0, Landroid/app/Activity;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroid/app/Activity;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Lq/a0;->m(Landroid/view/Window;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lq/a0;->l:Landroid/view/Window;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "We have not been given a Window"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public final w(Landroid/content/Context;)Lfe/c;
    .locals 3

    .line 1
    iget-object v0, p0, Lq/a0;->M0:Lq/x;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lq/x;

    .line 6
    .line 7
    sget-object v1, Lv3/f;->e:Lv3/f;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Lv3/f;

    .line 16
    .line 17
    const-string v2, "location"

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/location/LocationManager;

    .line 24
    .line 25
    invoke-direct {v1, p1, v2}, Lv3/f;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    .line 26
    .line 27
    .line 28
    sput-object v1, Lv3/f;->e:Lv3/f;

    .line 29
    .line 30
    :cond_0
    sget-object p1, Lv3/f;->e:Lv3/f;

    .line 31
    .line 32
    invoke-direct {v0, p0, p1}, Lq/x;-><init>(Lq/a0;Lv3/f;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lq/a0;->M0:Lq/x;

    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Lq/a0;->M0:Lq/x;

    .line 38
    .line 39
    return-object p1
.end method

.method public final y(I)Lq/z;
    .locals 4

    .line 1
    iget-object v0, p0, Lq/a0;->O:[Lq/z;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-gt v1, p1, :cond_2

    .line 7
    .line 8
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 9
    .line 10
    new-array v1, v1, [Lq/z;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    array-length v2, v0

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iput-object v1, p0, Lq/a0;->O:[Lq/z;

    .line 20
    .line 21
    move-object v0, v1

    .line 22
    :cond_2
    aget-object v1, v0, p1

    .line 23
    .line 24
    if-nez v1, :cond_3

    .line 25
    .line 26
    new-instance v1, Lq/z;

    .line 27
    .line 28
    invoke-direct {v1, p1}, Lq/z;-><init>(I)V

    .line 29
    .line 30
    .line 31
    aput-object v1, v0, p1

    .line 32
    .line 33
    :cond_3
    return-object v1
.end method

.method public final z()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lq/a0;->u()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lq/a0;->H:Z

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lq/a0;->p:Lq/m0;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lq/a0;->j:Ljava/lang/Object;

    .line 14
    .line 15
    instance-of v1, v0, Landroid/app/Activity;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Lq/m0;

    .line 20
    .line 21
    check-cast v0, Landroid/app/Activity;

    .line 22
    .line 23
    iget-boolean v2, p0, Lq/a0;->I:Z

    .line 24
    .line 25
    invoke-direct {v1, v0, v2}, Lq/m0;-><init>(Landroid/app/Activity;Z)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lq/a0;->p:Lq/m0;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    instance-of v1, v0, Landroid/app/Dialog;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    new-instance v1, Lq/m0;

    .line 36
    .line 37
    check-cast v0, Landroid/app/Dialog;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Lq/m0;-><init>(Landroid/app/Dialog;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lq/a0;->p:Lq/m0;

    .line 43
    .line 44
    :cond_2
    :goto_0
    iget-object v0, p0, Lq/a0;->p:Lq/m0;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-boolean v1, p0, Lq/a0;->R0:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lq/m0;->n0(Z)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_1
    return-void
.end method

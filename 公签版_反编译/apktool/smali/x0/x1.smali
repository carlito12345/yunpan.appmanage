.class public final Lx0/x1;
.super Lx0/a2;
.source "SourceFile"


# static fields
.field public static e:Ljava/lang/reflect/Field; = null

.field public static f:Z = false

.field public static g:Ljava/lang/reflect/Constructor; = null

.field public static h:Z = false


# instance fields
.field public c:Landroid/view/WindowInsets;

.field public d:Lp0/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lx0/a2;-><init>()V

    .line 2
    invoke-static {}, Lx0/x1;->i()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lx0/x1;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method public constructor <init>(Lx0/j2;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lx0/a2;-><init>(Lx0/j2;)V

    .line 4
    invoke-virtual {p1}, Lx0/j2;->g()Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Lx0/x1;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method private static i()Landroid/view/WindowInsets;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-boolean v1, Lx0/x1;->f:Z

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    const-class v1, Landroid/view/WindowInsets;

    .line 8
    .line 9
    const-string v3, "CONSUMED"

    .line 10
    .line 11
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sput-object v1, Lx0/x1;->e:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    :catch_0
    sput-boolean v2, Lx0/x1;->f:Z

    .line 18
    .line 19
    :cond_0
    sget-object v1, Lx0/x1;->e:Ljava/lang/reflect/Field;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/view/WindowInsets;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    new-instance v4, Landroid/view/WindowInsets;

    .line 33
    .line 34
    invoke-direct {v4, v1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    .line 36
    .line 37
    return-object v4

    .line 38
    :catch_1
    nop

    .line 39
    :cond_1
    sget-boolean v1, Lx0/x1;->h:Z

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    :try_start_2
    const-class v1, Landroid/view/WindowInsets;

    .line 44
    .line 45
    new-array v4, v2, [Ljava/lang/Class;

    .line 46
    .line 47
    const-class v5, Landroid/graphics/Rect;

    .line 48
    .line 49
    aput-object v5, v4, v0

    .line 50
    .line 51
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    sput-object v1, Lx0/x1;->g:Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 56
    .line 57
    :catch_2
    sput-boolean v2, Lx0/x1;->h:Z

    .line 58
    .line 59
    :cond_2
    sget-object v1, Lx0/x1;->g:Ljava/lang/reflect/Constructor;

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    :try_start_3
    new-instance v4, Landroid/graphics/Rect;

    .line 64
    .line 65
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 66
    .line 67
    .line 68
    new-array v2, v2, [Ljava/lang/Object;

    .line 69
    .line 70
    aput-object v4, v2, v0

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Landroid/view/WindowInsets;
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 77
    .line 78
    return-object v0

    .line 79
    :catch_3
    :cond_3
    return-object v3
.end method


# virtual methods
.method public b()Lx0/j2;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lx0/a2;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lx0/x1;->c:Landroid/view/WindowInsets;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1, v0}, Lx0/j2;->h(Landroid/view/View;Landroid/view/WindowInsets;)Lx0/j2;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lx0/a2;->b:[Lp0/c;

    .line 12
    .line 13
    iget-object v2, v0, Lx0/j2;->a:Lx0/g2;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Lx0/g2;->o([Lp0/c;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lx0/x1;->d:Lp0/c;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Lx0/g2;->q(Lp0/c;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public e(Lp0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx0/x1;->d:Lp0/c;

    .line 2
    .line 3
    return-void
.end method

.method public g(Lp0/c;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lx0/x1;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p1, Lp0/c;->a:I

    .line 6
    .line 7
    iget v2, p1, Lp0/c;->c:I

    .line 8
    .line 9
    iget v3, p1, Lp0/c;->d:I

    .line 10
    .line 11
    iget p1, p1, Lp0/c;->b:I

    .line 12
    .line 13
    invoke-static {v0, v1, p1, v2, v3}, Lta/p;->d(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lx0/x1;->c:Landroid/view/WindowInsets;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

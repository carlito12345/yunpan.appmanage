.class public final Lm0/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Bundle;

.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public final c:[Lm0/q0;

.field public final d:[Lm0/q0;

.field public final e:Z

.field public final f:Z

.field public final g:I

.field public final h:Ljava/lang/CharSequence;

.field public final i:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lm0/q0;[Lm0/q0;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lm0/n;->f:Z

    .line 6
    .line 7
    iput-object p1, p0, Lm0/n;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 8
    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    iget v1, p1, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-ne v1, v2, :cond_2

    .line 15
    .line 16
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v4, 0x17

    .line 19
    .line 20
    if-lt v3, v4, :cond_2

    .line 21
    .line 22
    iget-object v1, p1, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 23
    .line 24
    const/16 v4, 0x1c

    .line 25
    .line 26
    if-lt v3, v4, :cond_0

    .line 27
    .line 28
    invoke-static {v1}, Lq0/f;->c(Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    goto :goto_4

    .line 33
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "getType"

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_4

    .line 55
    :catch_0
    nop

    .line 56
    goto :goto_0

    .line 57
    :catch_1
    nop

    .line 58
    goto :goto_2

    .line 59
    :catch_2
    nop

    .line 60
    goto :goto_3

    .line 61
    :goto_0
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_1
    const/4 v1, -0x1

    .line 67
    goto :goto_4

    .line 68
    :goto_2
    if-eqz v1, :cond_1

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :goto_3
    if-eqz v1, :cond_1

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    :goto_4
    const/4 v2, 0x2

    .line 81
    if-ne v1, v2, :cond_3

    .line 82
    .line 83
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iput p1, p0, Lm0/n;->g:I

    .line 88
    .line 89
    :cond_3
    invoke-static {p2}, Lm0/q;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Lm0/n;->h:Ljava/lang/CharSequence;

    .line 94
    .line 95
    iput-object p3, p0, Lm0/n;->i:Landroid/app/PendingIntent;

    .line 96
    .line 97
    iput-object p4, p0, Lm0/n;->a:Landroid/os/Bundle;

    .line 98
    .line 99
    iput-object p5, p0, Lm0/n;->c:[Lm0/q0;

    .line 100
    .line 101
    iput-object p6, p0, Lm0/n;->d:[Lm0/q0;

    .line 102
    .line 103
    iput-boolean v0, p0, Lm0/n;->e:Z

    .line 104
    .line 105
    iput-boolean v0, p0, Lm0/n;->f:Z

    .line 106
    .line 107
    return-void
.end method


# virtual methods
.method public final a()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/n;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lm0/n;->g:I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->b(I)Landroidx/core/graphics/drawable/IconCompat;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lm0/n;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lm0/n;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 16
    .line 17
    return-object v0
.end method

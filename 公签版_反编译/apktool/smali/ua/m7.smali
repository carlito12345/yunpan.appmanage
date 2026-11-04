.class public final Lua/m7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Ljava/lang/reflect/Method;

.field public final c:Ljava/lang/reflect/Method;

.field public final d:Ljava/lang/reflect/Method;

.field public final e:Ljava/lang/reflect/Method;

.field public final f:Ljava/lang/reflect/Method;

.field public final g:Ljava/lang/reflect/Method;

.field public final h:Ljava/lang/reflect/Method;

.field public final i:Ljava/lang/Object;

.field public final j:Ljava/lang/reflect/Method;

.field public final k:Ljava/lang/Object;

.field public final l:Ljava/lang/reflect/Method;

.field public final m:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lua/m7;->a:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lua/m7;->b:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    iput-object p3, p0, Lua/m7;->c:Ljava/lang/reflect/Method;

    .line 9
    .line 10
    iput-object p4, p0, Lua/m7;->d:Ljava/lang/reflect/Method;

    .line 11
    .line 12
    iput-object p5, p0, Lua/m7;->e:Ljava/lang/reflect/Method;

    .line 13
    .line 14
    iput-object p6, p0, Lua/m7;->f:Ljava/lang/reflect/Method;

    .line 15
    .line 16
    iput-object p7, p0, Lua/m7;->g:Ljava/lang/reflect/Method;

    .line 17
    .line 18
    iput-object p8, p0, Lua/m7;->h:Ljava/lang/reflect/Method;

    .line 19
    .line 20
    iput-object p9, p0, Lua/m7;->i:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object p10, p0, Lua/m7;->j:Ljava/lang/reflect/Method;

    .line 23
    .line 24
    iput-object p11, p0, Lua/m7;->k:Ljava/lang/Object;

    .line 25
    .line 26
    iput-object p12, p0, Lua/m7;->l:Ljava/lang/reflect/Method;

    .line 27
    .line 28
    iput-object p13, p0, Lua/m7;->m:Ljava/lang/reflect/Method;

    .line 29
    .line 30
    return-void
.end method

.method public static b(Ljava/lang/reflect/Constructor;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    array-length v0, p0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v0, :cond_6

    .line 13
    .line 14
    aget-object v3, p0, v2

    .line 15
    .line 16
    const-class v4, Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const-class v4, Landroid/util/AttributeSet;

    .line 26
    .line 27
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 35
    .line 36
    if-eq v3, v4, :cond_5

    .line 37
    .line 38
    const-class v4, Ljava/lang/Integer;

    .line 39
    .line 40
    if-ne v3, v4, :cond_3

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 44
    .line 45
    if-eq v3, v4, :cond_5

    .line 46
    .line 47
    const-class v4, Ljava/lang/Boolean;

    .line 48
    .line 49
    if-ne v3, v4, :cond_4

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    return v1

    .line 53
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_6
    const/4 p0, 0x1

    .line 57
    return p0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 3
    .line 4
    .line 5
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    return-object p0

    .line 7
    :catchall_0
    :try_start_1
    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :catchall_1
    return-object v0
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    const/4 v4, 0x1

    .line 9
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    aget-object v5, v0, v3

    .line 12
    .line 13
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    array-length v7, v6

    .line 28
    if-ne v7, v4, :cond_0

    .line 29
    .line 30
    aget-object v4, v6, v2

    .line 31
    .line 32
    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    return-object v5

    .line 39
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    array-length v0, p0

    .line 47
    const/4 v1, 0x0

    .line 48
    :goto_1
    if-ge v1, v0, :cond_3

    .line 49
    .line 50
    aget-object v3, p0, v1

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_2

    .line 65
    .line 66
    array-length v6, v5

    .line 67
    if-ne v6, v4, :cond_2

    .line 68
    .line 69
    aget-object v5, v5, v2

    .line 70
    .line 71
    invoke-virtual {v5, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_2

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 78
    .line 79
    .line 80
    return-object v3

    .line 81
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    const/4 p0, 0x0

    .line 85
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Method;)Ljava/lang/Integer;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    iget-object v1, p0, Lua/m7;->a:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    instance-of v1, p1, Ljava/lang/Integer;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    check-cast p1, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    return-object p1

    .line 18
    :catchall_0
    :cond_1
    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lua/m7;->d:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lua/m7;->a(Ljava/lang/reflect/Method;)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Lua/m7;->e:Ljava/lang/reflect/Method;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lua/m7;->a(Ljava/lang/reflect/Method;)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_1
    iget-object v0, p0, Lua/m7;->l:Ljava/lang/reflect/Method;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lua/m7;->a(Ljava/lang/reflect/Method;)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    const/4 v0, -0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    :goto_0
    return v0
.end method

.method public final g(Landroid/view/KeyEvent;Z)Z
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eqz p2, :cond_4

    .line 5
    .line 6
    :try_start_0
    const-string p2, "android.os.ServiceManager"

    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const-string v3, "getService"

    .line 13
    .line 14
    new-array v4, v1, [Ljava/lang/Class;

    .line 15
    .line 16
    const-class v5, Ljava/lang/String;

    .line 17
    .line 18
    aput-object v5, v4, v2

    .line 19
    .line 20
    invoke-virtual {p2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    new-array v3, v1, [Ljava/lang/Object;

    .line 25
    .line 26
    const-string v4, "input"

    .line 27
    .line 28
    aput-object v4, v3, v2

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-virtual {p2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Landroid/os/IBinder;

    .line 36
    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const-string v3, "android.hardware.input.IInputManager$Stub"

    .line 41
    .line 42
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string v5, "asInterface"

    .line 47
    .line 48
    new-array v6, v1, [Ljava/lang/Class;

    .line 49
    .line 50
    const-class v7, Landroid/os/IBinder;

    .line 51
    .line 52
    aput-object v7, v6, v2

    .line 53
    .line 54
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    new-array v5, v1, [Ljava/lang/Object;

    .line 59
    .line 60
    aput-object p2, v5, v2

    .line 61
    .line 62
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    if-nez p2, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const-string v4, "injectInputEvent"

    .line 74
    .line 75
    new-array v5, v0, [Ljava/lang/Class;

    .line 76
    .line 77
    const-class v6, Landroid/view/InputEvent;

    .line 78
    .line 79
    aput-object v6, v5, v2

    .line 80
    .line 81
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 82
    .line 83
    aput-object v6, v5, v1

    .line 84
    .line 85
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    new-array v0, v0, [Ljava/lang/Object;

    .line 94
    .line 95
    aput-object p1, v0, v2

    .line 96
    .line 97
    aput-object v4, v0, v1

    .line 98
    .line 99
    invoke-virtual {v3, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    instance-of p2, p1, Ljava/lang/Boolean;

    .line 104
    .line 105
    if-eqz p2, :cond_3

    .line 106
    .line 107
    check-cast p1, Ljava/lang/Boolean;

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 110
    .line 111
    .line 112
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    if-eqz p1, :cond_2

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    const/4 v1, 0x0

    .line 117
    :cond_3
    :goto_0
    move v2, v1

    .line 118
    :catchall_0
    :goto_1
    return v2

    .line 119
    :cond_4
    iget-object p2, p0, Lua/m7;->h:Ljava/lang/reflect/Method;

    .line 120
    .line 121
    if-eqz p2, :cond_6

    .line 122
    .line 123
    iget-object v0, p0, Lua/m7;->a:Landroid/view/View;

    .line 124
    .line 125
    new-array v3, v1, [Ljava/lang/Object;

    .line 126
    .line 127
    aput-object p1, v3, v2

    .line 128
    .line 129
    invoke-virtual {p2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    instance-of v0, p2, Ljava/lang/Boolean;

    .line 134
    .line 135
    if-eqz v0, :cond_5

    .line 136
    .line 137
    check-cast p2, Ljava/lang/Boolean;

    .line 138
    .line 139
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    if-eqz p2, :cond_6

    .line 144
    .line 145
    :cond_5
    return v1

    .line 146
    :cond_6
    iget-object p2, p0, Lua/m7;->j:Ljava/lang/reflect/Method;

    .line 147
    .line 148
    if-eqz p2, :cond_9

    .line 149
    .line 150
    iget-object v0, p0, Lua/m7;->i:Ljava/lang/Object;

    .line 151
    .line 152
    if-eqz v0, :cond_9

    .line 153
    .line 154
    new-array v3, v1, [Ljava/lang/Object;

    .line 155
    .line 156
    aput-object p1, v3, v2

    .line 157
    .line 158
    invoke-virtual {p2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    instance-of p2, p1, Ljava/lang/Boolean;

    .line 163
    .line 164
    if-eqz p2, :cond_8

    .line 165
    .line 166
    check-cast p1, Ljava/lang/Boolean;

    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_7

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_7
    const/4 v1, 0x0

    .line 176
    :cond_8
    :goto_2
    return v1

    .line 177
    :cond_9
    return v2
.end method

.method public final h()Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object v4, v0, Lua/m7;->g:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    if-eqz v4, :cond_0

    .line 9
    .line 10
    iget-object v1, v0, Lua/m7;->a:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {v4, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return v3

    .line 16
    :cond_0
    const/4 v4, -0x1

    .line 17
    iget-object v5, v0, Lua/m7;->k:Ljava/lang/Object;

    .line 18
    .line 19
    if-eqz v5, :cond_2

    .line 20
    .line 21
    iget-object v6, v0, Lua/m7;->m:Ljava/lang/reflect/Method;

    .line 22
    .line 23
    if-nez v6, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :try_start_0
    invoke-virtual {v6, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    instance-of v6, v5, Ljava/lang/Integer;

    .line 31
    .line 32
    if-eqz v6, :cond_2

    .line 33
    .line 34
    check-cast v5, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    nop

    .line 42
    :cond_2
    :goto_0
    if-gez v4, :cond_4

    .line 43
    .line 44
    :catchall_1
    :cond_3
    const/4 v2, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_4
    :try_start_1
    const-string v5, "android.app.ActivityManagerNative"

    .line 47
    .line 48
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const-string v6, "getDefault"

    .line 53
    .line 54
    invoke-virtual {v5, v6, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v5, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const-string v6, "setFocusedStack"

    .line 67
    .line 68
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 69
    .line 70
    invoke-static {v5, v6, v7}, Lua/m7;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    if-eqz v5, :cond_3

    .line 75
    .line 76
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    new-array v6, v3, [Ljava/lang/Object;

    .line 81
    .line 82
    aput-object v4, v6, v1

    .line 83
    .line 84
    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    .line 86
    .line 87
    const/4 v2, 0x1

    .line 88
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v17

    .line 92
    new-instance v15, Landroid/view/KeyEvent;

    .line 93
    .line 94
    const/16 v16, 0x8

    .line 95
    .line 96
    const/16 v19, 0x101

    .line 97
    .line 98
    const/4 v9, 0x0

    .line 99
    const/4 v10, 0x4

    .line 100
    const/4 v11, 0x0

    .line 101
    const/4 v12, 0x0

    .line 102
    const/4 v13, -0x1

    .line 103
    const/4 v14, 0x0

    .line 104
    move-object v4, v15

    .line 105
    move-wide/from16 v5, v17

    .line 106
    .line 107
    move-wide/from16 v7, v17

    .line 108
    .line 109
    move-object v3, v15

    .line 110
    move/from16 v15, v16

    .line 111
    .line 112
    move/from16 v16, v19

    .line 113
    .line 114
    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 115
    .line 116
    .line 117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 118
    .line 119
    .line 120
    move-result-wide v7

    .line 121
    new-instance v15, Landroid/view/KeyEvent;

    .line 122
    .line 123
    const/16 v16, 0x8

    .line 124
    .line 125
    const/16 v19, 0x101

    .line 126
    .line 127
    const/4 v9, 0x1

    .line 128
    const/4 v10, 0x4

    .line 129
    const/4 v11, 0x0

    .line 130
    const/4 v12, 0x0

    .line 131
    const/4 v13, -0x1

    .line 132
    const/4 v14, 0x0

    .line 133
    move-object v4, v15

    .line 134
    move-wide/from16 v5, v17

    .line 135
    .line 136
    move-object/from16 v20, v15

    .line 137
    .line 138
    move/from16 v15, v16

    .line 139
    .line 140
    move/from16 v16, v19

    .line 141
    .line 142
    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v3, v1}, Lua/m7;->g(Landroid/view/KeyEvent;Z)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_5

    .line 150
    .line 151
    move-object/from16 v4, v20

    .line 152
    .line 153
    invoke-virtual {v0, v4, v1}, Lua/m7;->g(Landroid/view/KeyEvent;Z)Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-eqz v5, :cond_6

    .line 158
    .line 159
    const/4 v3, 0x1

    .line 160
    goto :goto_2

    .line 161
    :cond_5
    move-object/from16 v4, v20

    .line 162
    .line 163
    :cond_6
    if-eqz v2, :cond_7

    .line 164
    .line 165
    const/4 v2, 0x1

    .line 166
    invoke-virtual {v0, v3, v2}, Lua/m7;->g(Landroid/view/KeyEvent;Z)Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eqz v3, :cond_7

    .line 171
    .line 172
    invoke-virtual {v0, v4, v2}, Lua/m7;->g(Landroid/view/KeyEvent;Z)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_7

    .line 177
    .line 178
    const/4 v1, 0x1

    .line 179
    :cond_7
    move v3, v1

    .line 180
    :goto_2
    return v3
.end method

.class public final Lcom/yunpan/appmanage/carsdk/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/k0;->b:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/yunpan/appmanage/carsdk/k0;->a:Z

    .line 16
    .line 17
    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/k0;->h:Ljava/lang/Object;

    .line 18
    .line 19
    new-instance p1, Lcom/yunpan/appmanage/carsdk/f;

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    invoke-direct {p1, v0, p0}, Lcom/yunpan/appmanage/carsdk/f;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/k0;->i:Ljava/lang/Object;

    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static b()Lcom/yunpan/appmanage/carsdk/k0;
    .locals 1

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static varargs g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    array-length v0, p2

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p2

    .line 6
    if-ge v1, v2, :cond_5

    .line 7
    .line 8
    aget-object v2, p2, v1

    .line 9
    .line 10
    instance-of v3, v2, Ljava/lang/Integer;

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    instance-of v3, v2, Ljava/lang/Float;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    aput-object v2, v0, v1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    instance-of v3, v2, Ljava/lang/Boolean;

    .line 29
    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 33
    .line 34
    aput-object v2, v0, v1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    instance-of v3, v2, Ljava/lang/Long;

    .line 38
    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    instance-of v3, v2, Ljava/lang/Double;

    .line 47
    .line 48
    if-eqz v3, :cond_4

    .line 49
    .line 50
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 51
    .line 52
    aput-object v2, v0, v1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    aput-object v2, v0, v1

    .line 60
    .line 61
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 13

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    iget-object v4, p0, Lcom/yunpan/appmanage/carsdk/k0;->i:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v4, Lcom/yunpan/appmanage/carsdk/f;

    .line 8
    .line 9
    const-class v5, Landroid/content/ServiceConnection;

    .line 10
    .line 11
    const-class v6, Landroid/content/Context;

    .line 12
    .line 13
    const-string v7, "createCar"

    .line 14
    .line 15
    iget-object v8, p0, Lcom/yunpan/appmanage/carsdk/k0;->b:Ljava/lang/Object;

    .line 16
    .line 17
    if-eqz v8, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v9, 0x1a

    .line 23
    .line 24
    if-ge v8, v9, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    :try_start_0
    sget-object v8, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 28
    .line 29
    iget-object v9, v8, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    .line 30
    .line 31
    const-string v10, "android.permission.DEVICE_POWER"

    .line 32
    .line 33
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-virtual {v9, v10, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 41
    if-eqz v8, :cond_2

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iput-boolean v3, p0, Lcom/yunpan/appmanage/carsdk/k0;->a:Z

    .line 45
    .line 46
    const-string v8, "android.car.Car"

    .line 47
    .line 48
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    const/4 v9, 0x0

    .line 53
    :try_start_1
    new-array v10, v0, [Ljava/lang/Class;

    .line 54
    .line 55
    aput-object v6, v10, v3

    .line 56
    .line 57
    aput-object v5, v10, v2

    .line 58
    .line 59
    const-class v11, Landroid/os/Handler;

    .line 60
    .line 61
    aput-object v11, v10, v1

    .line 62
    .line 63
    invoke-virtual {v8, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    iget-object v11, p0, Lcom/yunpan/appmanage/carsdk/k0;->g:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v11, Landroid/content/Context;

    .line 70
    .line 71
    iget-object v12, p0, Lcom/yunpan/appmanage/carsdk/k0;->e:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v12, Landroid/os/Handler;

    .line 74
    .line 75
    new-array v0, v0, [Ljava/lang/Object;

    .line 76
    .line 77
    aput-object v11, v0, v3

    .line 78
    .line 79
    aput-object v4, v0, v2

    .line 80
    .line 81
    aput-object v12, v0, v1

    .line 82
    .line 83
    invoke-virtual {v10, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    move-object v0, v9

    .line 93
    :goto_0
    if-nez v0, :cond_3

    .line 94
    .line 95
    :try_start_2
    new-array v10, v1, [Ljava/lang/Class;

    .line 96
    .line 97
    aput-object v6, v10, v3

    .line 98
    .line 99
    aput-object v5, v10, v2

    .line 100
    .line 101
    invoke-virtual {v8, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    iget-object v10, p0, Lcom/yunpan/appmanage/carsdk/k0;->g:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v10, Landroid/content/Context;

    .line 108
    .line 109
    new-array v1, v1, [Ljava/lang/Object;

    .line 110
    .line 111
    aput-object v10, v1, v3

    .line 112
    .line 113
    aput-object v4, v1, v2

    .line 114
    .line 115
    invoke-virtual {v5, v9, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 119
    goto :goto_1

    .line 120
    :catch_1
    move-exception v1

    .line 121
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 122
    .line 123
    .line 124
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 125
    .line 126
    :try_start_3
    new-array v1, v2, [Ljava/lang/Class;

    .line 127
    .line 128
    aput-object v6, v1, v3

    .line 129
    .line 130
    invoke-virtual {v8, v7, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iget-object v4, p0, Lcom/yunpan/appmanage/carsdk/k0;->g:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v4, Landroid/content/Context;

    .line 137
    .line 138
    new-array v2, v2, [Ljava/lang/Object;

    .line 139
    .line 140
    aput-object v4, v2, v3

    .line 141
    .line 142
    invoke-virtual {v1, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    .line 146
    goto :goto_2

    .line 147
    :catch_2
    move-exception v1

    .line 148
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 149
    .line 150
    .line 151
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 152
    .line 153
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/k0;->b:Ljava/lang/Object;

    .line 154
    .line 155
    const-string v1, "connect"

    .line 156
    .line 157
    new-array v2, v3, [Ljava/lang/Object;

    .line 158
    .line 159
    invoke-static {v0, v1, v2}, Lcom/yunpan/appmanage/carsdk/k0;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_5
    new-instance v0, Ljava/lang/NoSuchMethodException;

    .line 164
    .line 165
    const-string v1, "\u8fde\u63a5Car\u5931\u8d25"

    .line 166
    .line 167
    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v0

    .line 171
    :catch_3
    return-void
.end method

.method public c(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return p1

    .line 6
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aput-object p1, v1, v2

    .line 15
    .line 16
    const-string p1, "getVolumeGroupIdForUsage"

    .line 17
    .line 18
    invoke-static {v0, p1, v1}, Lcom/yunpan/appmanage/carsdk/k0;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public d(I)I
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "getGroupMaxVolume"

    .line 4
    .line 5
    iget-object v3, p0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    if-nez v3, :cond_0

    .line 9
    .line 10
    return v4

    .line 11
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yunpan/appmanage/carsdk/k0;->c(I)I

    .line 12
    .line 13
    .line 14
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 15
    :try_start_1
    iget-object v3, p0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    new-array v5, v0, [Ljava/lang/Class;

    .line 22
    .line 23
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    aput-object v6, v5, v4

    .line 26
    .line 27
    aput-object v6, v5, v1

    .line 28
    .line 29
    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object v5, p0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object v6, v0, v4

    .line 46
    .line 47
    aput-object v7, v0, v1

    .line 48
    .line 49
    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    return p1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    :try_start_2
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-array v3, v1, [Ljava/lang/Class;

    .line 71
    .line 72
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 73
    .line 74
    aput-object v5, v3, v4

    .line 75
    .line 76
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 81
    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    new-array v1, v1, [Ljava/lang/Object;

    .line 87
    .line 88
    aput-object p1, v1, v4

    .line 89
    .line 90
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 100
    return p1

    .line 101
    :catch_1
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    .line 104
    .line 105
    return v4

    .line 106
    :catch_2
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    .line 109
    .line 110
    return v4
.end method

.method public e(I)I
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "getGroupMinVolume"

    .line 4
    .line 5
    iget-object v3, p0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    if-nez v3, :cond_0

    .line 9
    .line 10
    return v4

    .line 11
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yunpan/appmanage/carsdk/k0;->c(I)I

    .line 12
    .line 13
    .line 14
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    :try_start_1
    iget-object v3, p0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    new-array v5, v0, [Ljava/lang/Class;

    .line 22
    .line 23
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    aput-object v6, v5, v4

    .line 26
    .line 27
    aput-object v6, v5, v1

    .line 28
    .line 29
    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object v5, p0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object v6, v0, v4

    .line 46
    .line 47
    aput-object v7, v0, v1

    .line 48
    .line 49
    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    return p1

    .line 60
    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-array v3, v1, [Ljava/lang/Class;

    .line 67
    .line 68
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 69
    .line 70
    aput-object v5, v3, v4

    .line 71
    .line 72
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 77
    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    new-array v1, v1, [Ljava/lang/Object;

    .line 83
    .line 84
    aput-object p1, v1, v4

    .line 85
    .line 86
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Ljava/lang/Integer;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 96
    return p1

    .line 97
    :catch_1
    return v4
.end method

.method public f(I)I
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "getGroupVolume"

    .line 4
    .line 5
    iget-object v3, p0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    if-nez v3, :cond_0

    .line 9
    .line 10
    return v4

    .line 11
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yunpan/appmanage/carsdk/k0;->c(I)I

    .line 12
    .line 13
    .line 14
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    :try_start_1
    iget-object v3, p0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    new-array v5, v0, [Ljava/lang/Class;

    .line 22
    .line 23
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    aput-object v6, v5, v4

    .line 26
    .line 27
    aput-object v6, v5, v1

    .line 28
    .line 29
    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object v5, p0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object v6, v0, v4

    .line 46
    .line 47
    aput-object v7, v0, v1

    .line 48
    .line 49
    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    return p1

    .line 60
    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-array v3, v1, [Ljava/lang/Class;

    .line 67
    .line 68
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 69
    .line 70
    aput-object v5, v3, v4

    .line 71
    .line 72
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 77
    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    new-array v1, v1, [Ljava/lang/Object;

    .line 83
    .line 84
    aput-object p1, v1, v4

    .line 85
    .line 86
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Ljava/lang/Integer;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 96
    return p1

    .line 97
    :catch_1
    return v4
.end method

.method public h(II)V
    .locals 12

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    const/4 v4, 0x0

    .line 6
    const-string v5, "setGroupVolume"

    .line 7
    .line 8
    iget-object v6, p0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 9
    .line 10
    if-nez v6, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yunpan/appmanage/carsdk/k0;->c(I)I

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    iget-object v6, p0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    new-array v7, v0, [Ljava/lang/Class;

    .line 24
    .line 25
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 26
    .line 27
    aput-object v8, v7, v4

    .line 28
    .line 29
    aput-object v8, v7, v3

    .line 30
    .line 31
    aput-object v8, v7, v2

    .line 32
    .line 33
    aput-object v8, v7, v1

    .line 34
    .line 35
    invoke-virtual {v6, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    iget-object v7, p0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    .line 59
    aput-object v8, v0, v4

    .line 60
    .line 61
    aput-object v9, v0, v3

    .line 62
    .line 63
    aput-object v10, v0, v2

    .line 64
    .line 65
    aput-object v11, v0, v1

    .line 66
    .line 67
    invoke-virtual {v6, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    :try_start_2
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-array v6, v1, [Ljava/lang/Class;

    .line 78
    .line 79
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 80
    .line 81
    aput-object v7, v6, v4

    .line 82
    .line 83
    aput-object v7, v6, v3

    .line 84
    .line 85
    aput-object v7, v6, v2

    .line 86
    .line 87
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v5, p0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 92
    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    new-array v1, v1, [Ljava/lang/Object;

    .line 106
    .line 107
    aput-object p1, v1, v4

    .line 108
    .line 109
    aput-object p2, v1, v3

    .line 110
    .line 111
    aput-object v6, v1, v2

    .line 112
    .line 113
    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 114
    .line 115
    .line 116
    :catch_0
    :goto_0
    return-void
.end method

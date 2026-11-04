.class public final Landroidx/lifecycle/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u0;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Landroidx/lifecycle/t0;

.field public final c:Landroid/os/Bundle;

.field public final d:Landroidx/lifecycle/o;

.field public final e:Lb4/e;


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Lb4/g;->getSavedStateRegistry()Lb4/e;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroidx/lifecycle/p0;->e:Lb4/e;

    .line 9
    .line 10
    invoke-interface {p2}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Landroidx/lifecycle/p0;->d:Landroidx/lifecycle/o;

    .line 15
    .line 16
    iput-object p3, p0, Landroidx/lifecycle/p0;->c:Landroid/os/Bundle;

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/lifecycle/p0;->a:Landroid/app/Application;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    sget-object p2, Landroidx/lifecycle/t0;->e:Landroidx/lifecycle/t0;

    .line 23
    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    new-instance p2, Landroidx/lifecycle/t0;

    .line 27
    .line 28
    invoke-direct {p2, p1}, Landroidx/lifecycle/t0;-><init>(Landroid/app/Application;)V

    .line 29
    .line 30
    .line 31
    sput-object p2, Landroidx/lifecycle/t0;->e:Landroidx/lifecycle/t0;

    .line 32
    .line 33
    :cond_0
    sget-object p1, Landroidx/lifecycle/t0;->e:Landroidx/lifecycle/t0;

    .line 34
    .line 35
    invoke-static {p1}, Lue/d;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance p1, Landroidx/lifecycle/t0;

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-direct {p1, p2}, Landroidx/lifecycle/t0;-><init>(Landroid/app/Application;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/p0;->b:Landroidx/lifecycle/t0;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/r0;
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Landroidx/lifecycle/p0;->d:Landroidx/lifecycle/o;

    .line 4
    .line 5
    if-eqz v2, :cond_a

    .line 6
    .line 7
    const-class v3, Landroidx/lifecycle/a;

    .line 8
    .line 9
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget-object v4, p0, Landroidx/lifecycle/p0;->a:Landroid/app/Application;

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    sget-object v4, Landroidx/lifecycle/q0;->a:Ljava/util/List;

    .line 20
    .line 21
    invoke-static {p1, v4}, Landroidx/lifecycle/q0;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v4, Landroidx/lifecycle/q0;->b:Ljava/util/List;

    .line 27
    .line 28
    invoke-static {p1, v4}, Landroidx/lifecycle/q0;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :goto_0
    if-nez v4, :cond_3

    .line 33
    .line 34
    iget-object p2, p0, Landroidx/lifecycle/p0;->a:Landroid/app/Application;

    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    iget-object p2, p0, Landroidx/lifecycle/p0;->b:Landroidx/lifecycle/t0;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroidx/lifecycle/t0;->b(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    sget-object p2, Landroidx/lifecycle/s0;->c:Landroidx/lifecycle/s0;

    .line 46
    .line 47
    if-nez p2, :cond_2

    .line 48
    .line 49
    new-instance p2, Landroidx/lifecycle/s0;

    .line 50
    .line 51
    invoke-direct {p2}, Landroidx/lifecycle/s0;-><init>()V

    .line 52
    .line 53
    .line 54
    sput-object p2, Landroidx/lifecycle/s0;->c:Landroidx/lifecycle/s0;

    .line 55
    .line 56
    :cond_2
    sget-object p2, Landroidx/lifecycle/s0;->c:Landroidx/lifecycle/s0;

    .line 57
    .line 58
    invoke-static {p2}, Lue/d;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p1}, Landroidx/lifecycle/s0;->b(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :goto_1
    return-object p1

    .line 66
    :cond_3
    iget-object v5, p0, Landroidx/lifecycle/p0;->e:Lb4/e;

    .line 67
    .line 68
    invoke-static {v5}, Lue/d;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object v6, p0, Landroidx/lifecycle/p0;->c:Landroid/os/Bundle;

    .line 72
    .line 73
    invoke-virtual {v5, p2}, Lb4/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    sget-object v8, Landroidx/lifecycle/j0;->f:[Ljava/lang/Class;

    .line 78
    .line 79
    invoke-static {v7, v6}, Landroidx/lifecycle/l0;->b(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/j0;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    new-instance v7, Landroidx/lifecycle/SavedStateHandleController;

    .line 84
    .line 85
    invoke-direct {v7, p2, v6}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Landroidx/lifecycle/j0;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7, v2, v5}, Landroidx/lifecycle/SavedStateHandleController;->c(Landroidx/lifecycle/o;Lb4/e;)V

    .line 89
    .line 90
    .line 91
    move-object p2, v2

    .line 92
    check-cast p2, Landroidx/lifecycle/v;

    .line 93
    .line 94
    iget-object p2, p2, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 95
    .line 96
    sget-object v8, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/n;

    .line 97
    .line 98
    if-eq p2, v8, :cond_5

    .line 99
    .line 100
    sget-object v8, Landroidx/lifecycle/n;->d:Landroidx/lifecycle/n;

    .line 101
    .line 102
    invoke-virtual {p2, v8}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-ltz p2, :cond_4

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    new-instance p2, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;

    .line 110
    .line 111
    invoke-direct {p2, v2, v5}, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;-><init>(Landroidx/lifecycle/o;Lb4/e;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, p2}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_5
    :goto_2
    invoke-virtual {v5}, Lb4/e;->d()V

    .line 119
    .line 120
    .line 121
    :goto_3
    if-eqz v3, :cond_6

    .line 122
    .line 123
    iget-object p2, p0, Landroidx/lifecycle/p0;->a:Landroid/app/Application;

    .line 124
    .line 125
    if-eqz p2, :cond_6

    .line 126
    .line 127
    const/4 v2, 0x2

    .line 128
    new-array v2, v2, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object p2, v2, v1

    .line 131
    .line 132
    aput-object v6, v2, v0

    .line 133
    .line 134
    invoke-static {p1, v4, v2}, Landroidx/lifecycle/q0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/r0;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    goto :goto_4

    .line 139
    :cond_6
    new-array p2, v0, [Ljava/lang/Object;

    .line 140
    .line 141
    aput-object v6, p2, v1

    .line 142
    .line 143
    invoke-static {p1, v4, p2}, Landroidx/lifecycle/q0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/r0;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    :goto_4
    const-string p2, "androidx.lifecycle.savedstate.vm.tag"

    .line 148
    .line 149
    iget-object v0, p1, Landroidx/lifecycle/r0;->a:Ljava/util/HashMap;

    .line 150
    .line 151
    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p1, Landroidx/lifecycle/r0;->a:Ljava/util/HashMap;

    .line 153
    .line 154
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    if-nez v1, :cond_7

    .line 159
    .line 160
    iget-object v2, p1, Landroidx/lifecycle/r0;->a:Ljava/util/HashMap;

    .line 161
    .line 162
    invoke-virtual {v2, p2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    goto :goto_5

    .line 166
    :catchall_0
    move-exception p1

    .line 167
    goto :goto_7

    .line 168
    :cond_7
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    if-nez v1, :cond_8

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_8
    move-object v7, v1

    .line 173
    :goto_6
    iget-boolean p2, p1, Landroidx/lifecycle/r0;->c:Z

    .line 174
    .line 175
    if-eqz p2, :cond_9

    .line 176
    .line 177
    invoke-static {v7}, Landroidx/lifecycle/r0;->a(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    :cond_9
    return-object p1

    .line 181
    :goto_7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    throw p1

    .line 183
    :cond_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 184
    .line 185
    const-string p2, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    .line 186
    .line 187
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p1
.end method

.method public final b(Ljava/lang/Class;)Landroidx/lifecycle/r0;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/p0;->a(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/r0;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v0, "Local and anonymous classes can not be ViewModels"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public final e(Ljava/lang/Class;Lp1/c;)Landroidx/lifecycle/r0;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    sget-object v2, Landroidx/lifecycle/s0;->b:Landroidx/lifecycle/s0;

    .line 4
    .line 5
    iget-object v3, p2, Lp1/b;->a:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v2, :cond_5

    .line 14
    .line 15
    sget-object v4, Landroidx/lifecycle/l0;->a:Landroidx/lifecycle/s0;

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-eqz v4, :cond_3

    .line 22
    .line 23
    sget-object v4, Landroidx/lifecycle/l0;->b:Landroidx/lifecycle/s0;

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-eqz v4, :cond_3

    .line 30
    .line 31
    sget-object v2, Landroidx/lifecycle/s0;->a:Landroidx/lifecycle/s0;

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/app/Application;

    .line 38
    .line 39
    const-class v3, Landroidx/lifecycle/a;

    .line 40
    .line 41
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    sget-object v4, Landroidx/lifecycle/q0;->a:Ljava/util/List;

    .line 50
    .line 51
    invoke-static {p1, v4}, Landroidx/lifecycle/q0;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    sget-object v4, Landroidx/lifecycle/q0;->b:Ljava/util/List;

    .line 57
    .line 58
    invoke-static {p1, v4}, Landroidx/lifecycle/q0;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    :goto_0
    if-nez v4, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Landroidx/lifecycle/p0;->b:Landroidx/lifecycle/t0;

    .line 65
    .line 66
    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/t0;->e(Ljava/lang/Class;Lp1/c;)Landroidx/lifecycle/r0;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1

    .line 71
    :cond_1
    if-eqz v3, :cond_2

    .line 72
    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    invoke-static {p2}, Landroidx/lifecycle/l0;->c(Lp1/c;)Landroidx/lifecycle/j0;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    const/4 v3, 0x2

    .line 80
    new-array v3, v3, [Ljava/lang/Object;

    .line 81
    .line 82
    aput-object v2, v3, v1

    .line 83
    .line 84
    aput-object p2, v3, v0

    .line 85
    .line 86
    invoke-static {p1, v4, v3}, Landroidx/lifecycle/q0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/r0;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    invoke-static {p2}, Landroidx/lifecycle/l0;->c(Lp1/c;)Landroidx/lifecycle/j0;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    new-array v0, v0, [Ljava/lang/Object;

    .line 96
    .line 97
    aput-object p2, v0, v1

    .line 98
    .line 99
    invoke-static {p1, v4, v0}, Landroidx/lifecycle/q0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/r0;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    iget-object p2, p0, Landroidx/lifecycle/p0;->d:Landroidx/lifecycle/o;

    .line 105
    .line 106
    if-eqz p2, :cond_4

    .line 107
    .line 108
    invoke-virtual {p0, p1, v2}, Landroidx/lifecycle/p0;->a(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/r0;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    :goto_1
    return-object p1

    .line 113
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 114
    .line 115
    const-string p2, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    .line 116
    .line 117
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1

    .line 121
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 122
    .line 123
    const-string p2, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    .line 124
    .line 125
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1
.end method

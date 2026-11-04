.class public abstract Landroidx/activity/m;
.super Lm0/k;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/w0;
.implements Landroidx/lifecycle/i;
.implements Lb4/g;
.implements Landroidx/activity/x;
.implements Landroidx/activity/result/h;
.implements Ln0/j;
.implements Ln0/k;
.implements Lm0/j0;
.implements Lm0/k0;
.implements Lx0/q;


# instance fields
.field public final b:La6/i;

.field public final c:Ls4/a;

.field public final d:Landroidx/lifecycle/v;

.field public final e:Lb4/f;

.field public f:Landroidx/lifecycle/v0;

.field public g:Landroidx/activity/w;

.field public final h:Landroidx/activity/l;

.field public final i:Lcom/bumptech/glide/manager/s;

.field public final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final k:Landroidx/activity/g;

.field public final l:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final m:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final n:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final p:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final q:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lm0/k;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, La6/i;

    .line 5
    .line 6
    invoke-direct {v0}, La6/i;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/activity/m;->b:La6/i;

    .line 10
    .line 11
    new-instance v0, Ls4/a;

    .line 12
    .line 13
    new-instance v1, La2/h;

    .line 14
    .line 15
    move-object v2, p0

    .line 16
    check-cast v2, Landroidx/fragment/app/j0;

    .line 17
    .line 18
    const/4 v3, 0x4

    .line 19
    invoke-direct {v1, v3, v2}, La2/h;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Ls4/a;-><init>(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroidx/activity/m;->c:Ls4/a;

    .line 26
    .line 27
    new-instance v0, Landroidx/lifecycle/v;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Landroidx/activity/m;->d:Landroidx/lifecycle/v;

    .line 33
    .line 34
    new-instance v1, Lb4/f;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lb4/f;-><init>(Lb4/g;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Landroidx/activity/m;->e:Lb4/f;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    iput-object v3, p0, Landroidx/activity/m;->g:Landroidx/activity/w;

    .line 43
    .line 44
    new-instance v3, Landroidx/activity/l;

    .line 45
    .line 46
    invoke-direct {v3, v2}, Landroidx/activity/l;-><init>(Landroidx/fragment/app/j0;)V

    .line 47
    .line 48
    .line 49
    iput-object v3, p0, Landroidx/activity/m;->h:Landroidx/activity/l;

    .line 50
    .line 51
    new-instance v4, Lcom/bumptech/glide/manager/s;

    .line 52
    .line 53
    new-instance v5, Lvb/l;

    .line 54
    .line 55
    const/4 v6, 0x4

    .line 56
    invoke-direct {v5, v6, v2}, Lvb/l;-><init>(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {v4, v3, v5}, Lcom/bumptech/glide/manager/s;-><init>(Landroidx/activity/l;Lvb/l;)V

    .line 60
    .line 61
    .line 62
    iput-object v4, p0, Landroidx/activity/m;->i:Lcom/bumptech/glide/manager/s;

    .line 63
    .line 64
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v3, p0, Landroidx/activity/m;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 70
    .line 71
    new-instance v3, Landroidx/activity/g;

    .line 72
    .line 73
    invoke-direct {v3, v2}, Landroidx/activity/g;-><init>(Landroidx/fragment/app/j0;)V

    .line 74
    .line 75
    .line 76
    iput-object v3, p0, Landroidx/activity/m;->k:Landroidx/activity/g;

    .line 77
    .line 78
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 79
    .line 80
    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v3, p0, Landroidx/activity/m;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 84
    .line 85
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 86
    .line 87
    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object v3, p0, Landroidx/activity/m;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 91
    .line 92
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 93
    .line 94
    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v3, p0, Landroidx/activity/m;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 98
    .line 99
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 100
    .line 101
    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v3, p0, Landroidx/activity/m;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 105
    .line 106
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 107
    .line 108
    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v3, p0, Landroidx/activity/m;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 112
    .line 113
    const/4 v3, 0x0

    .line 114
    iput-boolean v3, p0, Landroidx/activity/m;->r:Z

    .line 115
    .line 116
    iput-boolean v3, p0, Landroidx/activity/m;->s:Z

    .line 117
    .line 118
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 119
    .line 120
    const/16 v4, 0x13

    .line 121
    .line 122
    if-lt v3, v4, :cond_0

    .line 123
    .line 124
    new-instance v5, Landroidx/activity/ComponentActivity$2;

    .line 125
    .line 126
    invoke-direct {v5, v2}, Landroidx/activity/ComponentActivity$2;-><init>(Landroidx/fragment/app/j0;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v5}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/s;)V

    .line 130
    .line 131
    .line 132
    :cond_0
    new-instance v5, Landroidx/activity/ComponentActivity$3;

    .line 133
    .line 134
    invoke-direct {v5, v2}, Landroidx/activity/ComponentActivity$3;-><init>(Landroidx/fragment/app/j0;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v5}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/s;)V

    .line 138
    .line 139
    .line 140
    new-instance v5, Landroidx/activity/ComponentActivity$4;

    .line 141
    .line 142
    invoke-direct {v5, v2}, Landroidx/activity/ComponentActivity$4;-><init>(Landroidx/fragment/app/j0;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v5}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/s;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Lb4/f;->a()V

    .line 149
    .line 150
    .line 151
    invoke-static {p0}, Landroidx/lifecycle/l0;->e(Lb4/g;)V

    .line 152
    .line 153
    .line 154
    if-gt v4, v3, :cond_1

    .line 155
    .line 156
    const/16 v4, 0x17

    .line 157
    .line 158
    if-gt v3, v4, :cond_1

    .line 159
    .line 160
    new-instance v3, Landroidx/activity/ImmLeaksCleaner;

    .line 161
    .line 162
    invoke-direct {v3, p0}, Landroidx/activity/ImmLeaksCleaner;-><init>(Landroidx/activity/m;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v3}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/s;)V

    .line 166
    .line 167
    .line 168
    :cond_1
    new-instance v0, Landroidx/activity/d;

    .line 169
    .line 170
    const/4 v3, 0x0

    .line 171
    invoke-direct {v0, v3, v2}, Landroidx/activity/d;-><init>(ILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v1, Lb4/f;->b:Lb4/e;

    .line 175
    .line 176
    const-string v3, "android:support:activity-result"

    .line 177
    .line 178
    invoke-virtual {v1, v3, v0}, Lb4/e;->c(Ljava/lang/String;Lb4/d;)V

    .line 179
    .line 180
    .line 181
    new-instance v0, Landroidx/activity/e;

    .line 182
    .line 183
    invoke-direct {v0, v2}, Landroidx/activity/e;-><init>(Landroidx/fragment/app/j0;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v0}, Landroidx/activity/m;->o(Lm/a;)V

    .line 187
    .line 188
    .line 189
    return-void
.end method

.method public static synthetic n(Landroidx/activity/m;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Landroidx/activity/w;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/activity/m;->g:Landroidx/activity/w;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/activity/w;

    .line 6
    .line 7
    new-instance v1, Landroidx/activity/h;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2, p0}, Landroidx/activity/h;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroidx/activity/w;-><init>(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/activity/m;->g:Landroidx/activity/w;

    .line 17
    .line 18
    new-instance v0, Landroidx/activity/ComponentActivity$6;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Landroidx/activity/ComponentActivity$6;-><init>(Landroidx/activity/m;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Landroidx/activity/m;->d:Landroidx/lifecycle/v;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/s;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Landroidx/activity/m;->g:Landroidx/activity/w;

    .line 29
    .line 30
    return-object v0
.end method

.method public final b(Lw0/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/m;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Landroidx/fragment/app/s0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/m;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Landroidx/fragment/app/s0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/m;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e()Landroidx/activity/result/g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/m;->k:Landroidx/activity/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f(Landroidx/fragment/app/s0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/m;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g(Landroidx/fragment/app/s0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/m;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getDefaultViewModelCreationExtras()Lp1/b;
    .locals 4

    .line 1
    new-instance v0, Lp1/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lp1/c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, v0, Lp1/b;->a:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Landroidx/lifecycle/s0;->a:Landroidx/lifecycle/s0;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-object v1, Landroidx/lifecycle/l0;->a:Landroidx/lifecycle/s0;

    .line 24
    .line 25
    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    sget-object v1, Landroidx/lifecycle/l0;->b:Landroidx/lifecycle/s0;

    .line 29
    .line 30
    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    sget-object v1, Landroidx/lifecycle/l0;->c:Landroidx/lifecycle/s0;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :cond_1
    return-object v0
.end method

.method public final getLifecycle()Landroidx/lifecycle/o;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/m;->d:Landroidx/lifecycle/v;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSavedStateRegistry()Lb4/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/m;->e:Lb4/f;

    .line 2
    .line 3
    iget-object v0, v0, Lb4/f;->b:Lb4/e;

    .line 4
    .line 5
    return-object v0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/v0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/activity/m;->f:Landroidx/lifecycle/v0;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/activity/k;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/activity/k;->a:Landroidx/lifecycle/v0;

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/activity/m;->f:Landroidx/lifecycle/v0;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/activity/m;->f:Landroidx/lifecycle/v0;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Landroidx/lifecycle/v0;

    .line 28
    .line 29
    invoke-direct {v0}, Landroidx/lifecycle/v0;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Landroidx/activity/m;->f:Landroidx/lifecycle/v0;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Landroidx/activity/m;->f:Landroidx/lifecycle/v0;

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public final h(Landroidx/fragment/app/s0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/m;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i(Landroidx/fragment/app/v0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/m;->c:Ls4/a;

    .line 2
    .line 3
    iget-object v1, v0, Ls4/a;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object p1, v0, Ls4/a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final k(Landroidx/fragment/app/v0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/m;->c:Ls4/a;

    .line 2
    .line 3
    iget-object v1, v0, Ls4/a;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Ls4/a;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, v0, Ls4/a;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Ljava/lang/Runnable;

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public final l(Landroidx/fragment/app/s0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/m;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final m(Landroidx/fragment/app/s0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/m;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final o(Lm/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/m;->b:La6/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, La6/i;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Landroidx/activity/m;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Lm/a;->a()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, v0, La6/i;->a:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/m;->k:Landroidx/activity/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/activity/result/g;->a(IILandroid/content/Intent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/activity/m;->a()Landroidx/activity/w;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/activity/w;->b()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/activity/m;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lw0/a;

    .line 21
    .line 22
    invoke-interface {v1, p1}, Lw0/a;->accept(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/m;->e:Lb4/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lb4/f;->b(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/activity/m;->b:La6/i;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iput-object p0, v0, La6/i;->b:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v0, v0, La6/i;->a:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lm/a;

    .line 32
    .line 33
    invoke-interface {v1}, Lm/a;->a()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-super {p0, p1}, Lm0/k;->onCreate(Landroid/os/Bundle;)V

    .line 38
    .line 39
    .line 40
    sget p1, Landroidx/lifecycle/i0;->b:I

    .line 41
    .line 42
    invoke-static {p0}, Landroidx/lifecycle/l0;->g(Landroid/app/Activity;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Landroidx/activity/m;->c:Ls4/a;

    .line 11
    .line 12
    iget-object v0, v0, Ls4/a;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroidx/fragment/app/v0;

    .line 31
    .line 32
    iget-object v1, v1, Landroidx/fragment/app/v0;->a:Landroidx/fragment/app/d1;

    .line 33
    .line 34
    invoke-virtual {v1, p2, p1}, Landroidx/fragment/app/d1;->j(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p1, 0x1

    .line 39
    return p1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_3

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/activity/m;->c:Ls4/a;

    .line 13
    .line 14
    iget-object p1, p1, Ls4/a;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroidx/fragment/app/v0;

    .line 33
    .line 34
    iget-object v2, v2, Landroidx/fragment/app/v0;->a:Landroidx/fragment/app/d1;

    .line 35
    .line 36
    invoke-virtual {v2, p2}, Landroidx/fragment/app/d1;->o(Landroid/view/MenuItem;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v1, 0x0

    .line 44
    :goto_0
    return v1

    .line 45
    :cond_3
    return v0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/activity/m;->r:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/activity/m;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw0/a;

    .line 3
    new-instance v2, Lm0/l;

    invoke-direct {v2, p1}, Lm0/l;-><init>(Z)V

    invoke-interface {v1, v2}, Lw0/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/activity/m;->r:Z

    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iput-boolean v0, p0, Landroidx/activity/m;->r:Z

    .line 7
    iget-object p2, p0, Landroidx/activity/m;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw0/a;

    .line 8
    new-instance v2, Lm0/l;

    invoke-direct {v2, v0, p1}, Lm0/l;-><init>(IZ)V

    invoke-interface {v1, v2}, Lw0/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 9
    iput-boolean v0, p0, Landroidx/activity/m;->r:Z

    .line 10
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/activity/m;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lw0/a;

    .line 21
    .line 22
    invoke-interface {v1, p1}, Lw0/a;->accept(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/m;->c:Ls4/a;

    .line 2
    .line 3
    iget-object v0, v0, Ls4/a;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/fragment/app/v0;

    .line 22
    .line 23
    iget-object v1, v1, Landroidx/fragment/app/v0;->a:Landroidx/fragment/app/d1;

    .line 24
    .line 25
    invoke-virtual {v1, p2}, Landroidx/fragment/app/d1;->p(Landroid/view/Menu;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/activity/m;->s:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/activity/m;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw0/a;

    .line 3
    new-instance v2, Lm0/l0;

    invoke-direct {v2, p1}, Lm0/l0;-><init>(Z)V

    invoke-interface {v1, v2}, Lw0/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/activity/m;->s:Z

    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iput-boolean v0, p0, Landroidx/activity/m;->s:Z

    .line 7
    iget-object p2, p0, Landroidx/activity/m;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw0/a;

    .line 8
    new-instance v2, Lm0/l0;

    invoke-direct {v2, v0, p1}, Lm0/l0;-><init>(IZ)V

    invoke-interface {v1, v2}, Lw0/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 9
    iput-boolean v0, p0, Landroidx/activity/m;->s:Z

    .line 10
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/activity/m;->c:Ls4/a;

    .line 7
    .line 8
    iget-object p1, p1, Ls4/a;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Landroidx/fragment/app/v0;

    .line 27
    .line 28
    iget-object p2, p2, Landroidx/fragment/app/v0;->a:Landroidx/fragment/app/d1;

    .line 29
    .line 30
    invoke-virtual {p2, p3}, Landroidx/fragment/app/d1;->s(Landroid/view/Menu;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x1

    .line 35
    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "androidx.activity.result.contract.extra.PERMISSIONS"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, -0x1

    .line 19
    iget-object v2, p0, Landroidx/activity/m;->k:Landroidx/activity/g;

    .line 20
    .line 21
    invoke-virtual {v2, p1, v1, v0}, Landroidx/activity/result/g;->a(IILandroid/content/Intent;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v1, 0x17

    .line 30
    .line 31
    if-lt v0, v1, :cond_0

    .line 32
    .line 33
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/m;->f:Landroidx/lifecycle/v0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroidx/activity/k;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v0, v1, Landroidx/activity/k;->a:Landroidx/lifecycle/v0;

    .line 14
    .line 15
    :cond_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    :cond_1
    new-instance v1, Landroidx/activity/k;

    .line 20
    .line 21
    invoke-direct {v1}, Landroidx/activity/k;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, v1, Landroidx/activity/k;->a:Landroidx/lifecycle/v0;

    .line 25
    .line 26
    return-object v1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/m;->d:Landroidx/lifecycle/v;

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/lifecycle/v;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/v;->g()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0, p1}, Lm0/k;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/activity/m;->e:Lb4/f;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lb4/f;->c(Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/activity/m;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lw0/a;

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v1, v2}, Lw0/a;->accept(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public final reportFullyDrawn()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ld/b;->R()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "reportFullyDrawn() for ComponentActivity"

    .line 8
    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v2, 0x12

    .line 12
    .line 13
    if-lt v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Lg4/a;->a(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_4

    .line 21
    :cond_0
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v1, 0x13

    .line 24
    .line 25
    if-le v0, v1, :cond_1

    .line 26
    .line 27
    invoke-super {p0}, Landroid/app/Activity;->reportFullyDrawn()V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    const-string v0, "android.permission.UPDATE_DEVICE_STATS"

    .line 34
    .line 35
    invoke-static {p0, v0}, Ln0/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    invoke-super {p0}, Landroid/app/Activity;->reportFullyDrawn()V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/activity/m;->i:Lcom/bumptech/glide/manager/s;

    .line 45
    .line 46
    iget-object v1, v0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    const/4 v2, 0x1

    .line 50
    :try_start_1
    iput-boolean v2, v0, Lcom/bumptech/glide/manager/s;->b:Z

    .line 51
    .line 52
    iget-object v2, v0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Lte/a;

    .line 71
    .line 72
    invoke-interface {v3}, Lte/a;->b()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catchall_1
    move-exception v0

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    iget-object v0, v0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    .line 84
    .line 85
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    invoke-static {}, Ld/b;->r()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :goto_3
    :try_start_3
    monitor-exit v1

    .line 91
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    :goto_4
    invoke-static {}, Ld/b;->r()V

    .line 93
    .line 94
    .line 95
    goto :goto_6

    .line 96
    :goto_5
    throw v0

    .line 97
    :goto_6
    goto :goto_5
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness",
                "MissingNullability"
            }
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p0}, Landroidx/lifecycle/l0;->h(Landroid/view/View;Landroidx/lifecycle/t;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "<this>"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const v2, 0x7f0b0626

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, p0}, Lnh/b;->j0(Landroid/view/View;Lb4/g;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0, v1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const v2, 0x7f0b0624

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0, v1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const v1, 0x7f0b0280

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Landroidx/activity/m;->h:Landroidx/activity/l;

    .line 85
    .line 86
    iget-boolean v2, v1, Landroidx/activity/l;->c:Z

    .line 87
    .line 88
    if-nez v2, :cond_0

    .line 89
    .line 90
    const/4 v2, 0x1

    .line 91
    iput-boolean v2, v1, Landroidx/activity/l;->c:Z

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 98
    .line 99
    .line 100
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

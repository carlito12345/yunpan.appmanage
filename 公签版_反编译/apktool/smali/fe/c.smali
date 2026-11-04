.class public abstract Lfe/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll5/r;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lfe/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lfe/c;->a:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Lfe/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lq/a0;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lfe/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfe/c;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La2/k;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v1, p0, Lfe/c;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lq/a0;

    .line 10
    .line 11
    iget-object v1, v1, Lq/a0;->k:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lfe/c;->a:Ljava/lang/Object;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public abstract d()Landroid/content/IntentFilter;
.end method

.method public abstract e()I
.end method

.method public f(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    .line 1
    instance-of v0, p1, Lr0/a;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    check-cast p1, Lr0/a;

    .line 6
    .line 7
    iget-object v0, p0, Lfe/c;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, La0/t;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, La0/t;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1}, La0/t;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lfe/c;->b:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lfe/c;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, La0/t;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, La0/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/view/MenuItem;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    new-instance v0, Lv/r;

    .line 34
    .line 35
    iget-object v1, p0, Lfe/c;->a:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Landroid/content/Context;

    .line 38
    .line 39
    invoke-direct {v0, v1, p1}, Lv/r;-><init>(Landroid/content/Context;Lr0/a;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lfe/c;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, La0/t;

    .line 45
    .line 46
    invoke-virtual {v1, p1, v0}, La0/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_1
    return-object v0

    .line 50
    :cond_2
    return-object p1
.end method

.method public abstract g()V
.end method

.method public h()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lfe/c;->c()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lfe/c;->d()Landroid/content/IntentFilter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lfe/c;->a:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, La2/k;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    new-instance v1, La2/k;

    .line 24
    .line 25
    const/4 v2, 0x4

    .line 26
    invoke-direct {v1, v2, p0}, La2/k;-><init>(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lfe/c;->a:Ljava/lang/Object;

    .line 30
    .line 31
    :cond_1
    iget-object v1, p0, Lfe/c;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lq/a0;

    .line 34
    .line 35
    iget-object v1, v1, Lq/a0;->k:Landroid/content/Context;

    .line 36
    .line 37
    iget-object v2, p0, Lfe/c;->a:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, La2/k;

    .line 40
    .line 41
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method public abstract i()[B
.end method

.method public l(Ll5/w;)Ll5/q;
    .locals 4

    .line 1
    new-instance v0, Lm5/d;

    .line 2
    .line 3
    const-class v1, Ljava/io/File;

    .line 4
    .line 5
    iget-object v2, p0, Lfe/c;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/lang/Class;

    .line 8
    .line 9
    invoke-virtual {p1, v1, v2}, Ll5/w;->c(Ljava/lang/Class;Ljava/lang/Class;)Ll5/q;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-class v3, Landroid/net/Uri;

    .line 14
    .line 15
    invoke-virtual {p1, v3, v2}, Ll5/w;->c(Ljava/lang/Class;Ljava/lang/Class;)Ll5/q;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v3, p0, Lfe/c;->a:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Landroid/content/Context;

    .line 22
    .line 23
    invoke-direct {v0, v3, v1, p1, v2}, Lm5/d;-><init>(Landroid/content/Context;Ll5/q;Ll5/q;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

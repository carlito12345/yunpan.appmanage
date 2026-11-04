.class Lcom/desay_svautomotive/p023a/C0526b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desay_svautomotive/p023a/C0526b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/desay_svautomotive/p023a/C0526b;


# direct methods
.method public constructor <init>(Lcom/desay_svautomotive/p023a/C0526b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/desay_svautomotive/p023a/C0526b$1;->this$0:Lcom/desay_svautomotive/p023a/C0526b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/desay_svautomotive/p023a/C0526b$1;->this$0:Lcom/desay_svautomotive/p023a/C0526b;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/desay_svautomotive/p023a/C0526b;->a(Lcom/desay_svautomotive/p023a/C0526b;)Lcom/desay_svautomotive/p023a/C0534j;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/desay_svautomotive/p023a/C0526b$1;->this$0:Lcom/desay_svautomotive/p023a/C0526b;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/desay_svautomotive/p023a/C0526b;->a(Lcom/desay_svautomotive/p023a/C0526b;)Lcom/desay_svautomotive/p023a/C0534j;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, v0}, Lcom/desay_svautomotive/p023a/C0534j;->m269a(I)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/desay_svautomotive/p023a/C0526b$1;->this$0:Lcom/desay_svautomotive/p023a/C0526b;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/desay_svautomotive/p023a/C0526b;->a(Lcom/desay_svautomotive/p023a/C0526b;)Lcom/desay_svautomotive/p023a/C0534j;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, v0}, Lcom/desay_svautomotive/p023a/C0534j;->m270b(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lcom/desay_svautomotive/p023a/C0526b$1;->this$0:Lcom/desay_svautomotive/p023a/C0526b;

    .line 32
    .line 33
    invoke-static {p2}, Lcom/desay_svautomotive/p023a/InterfaceC0528d$a;->m249a(Landroid/os/IBinder;)Lcom/desay_svautomotive/p023a/InterfaceC0528d;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {p1, p2}, Lcom/desay_svautomotive/p023a/C0526b;->c(Lcom/desay_svautomotive/p023a/C0526b;Lcom/desay_svautomotive/p023a/InterfaceC0528d;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/desay_svautomotive/p023a/C0526b$1;->this$0:Lcom/desay_svautomotive/p023a/C0526b;

    .line 41
    .line 42
    const/4 p2, 0x1

    .line 43
    invoke-static {p1, p2}, Lcom/desay_svautomotive/p023a/C0526b;->d(Lcom/desay_svautomotive/p023a/C0526b;Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/desay_svautomotive/p023a/C0526b$1;->this$0:Lcom/desay_svautomotive/p023a/C0526b;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/desay_svautomotive/p023a/C0526b;->b(Lcom/desay_svautomotive/p023a/C0526b;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    monitor-enter p1

    .line 53
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/p023a/C0526b$1;->this$0:Lcom/desay_svautomotive/p023a/C0526b;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/desay_svautomotive/p023a/C0526b;->b(Lcom/desay_svautomotive/p023a/C0526b;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-ge v0, v1, :cond_1

    .line 64
    .line 65
    iget-object v1, p0, Lcom/desay_svautomotive/p023a/C0526b$1;->this$0:Lcom/desay_svautomotive/p023a/C0526b;

    .line 66
    .line 67
    invoke-static {v1}, Lcom/desay_svautomotive/p023a/C0526b;->b(Lcom/desay_svautomotive/p023a/C0526b;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lcom/desay_svautomotive/p023a/InterfaceC0533i;

    .line 76
    .line 77
    invoke-interface {v1, p2}, Lcom/desay_svautomotive/p023a/InterfaceC0533i;->mo217a(I)V

    .line 78
    .line 79
    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p2

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    monitor-exit p1

    .line 86
    return-void

    .line 87
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    goto :goto_3

    .line 89
    :goto_2
    throw p2

    .line 90
    :goto_3
    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/desay_svautomotive/p023a/C0526b$1;->this$0:Lcom/desay_svautomotive/p023a/C0526b;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/desay_svautomotive/p023a/C0526b;->d(Lcom/desay_svautomotive/p023a/C0526b;Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/desay_svautomotive/p023a/C0526b$1;->this$0:Lcom/desay_svautomotive/p023a/C0526b;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v1}, Lcom/desay_svautomotive/p023a/C0526b;->c(Lcom/desay_svautomotive/p023a/C0526b;Lcom/desay_svautomotive/p023a/InterfaceC0528d;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/desay_svautomotive/p023a/C0526b$1;->this$0:Lcom/desay_svautomotive/p023a/C0526b;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/desay_svautomotive/p023a/C0526b;->b(Lcom/desay_svautomotive/p023a/C0526b;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    monitor-enter p1

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/desay_svautomotive/p023a/C0526b$1;->this$0:Lcom/desay_svautomotive/p023a/C0526b;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/desay_svautomotive/p023a/C0526b;->b(Lcom/desay_svautomotive/p023a/C0526b;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-ge v1, v2, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/desay_svautomotive/p023a/C0526b$1;->this$0:Lcom/desay_svautomotive/p023a/C0526b;

    .line 34
    .line 35
    invoke-static {v2}, Lcom/desay_svautomotive/p023a/C0526b;->b(Lcom/desay_svautomotive/p023a/C0526b;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/desay_svautomotive/p023a/InterfaceC0533i;

    .line 44
    .line 45
    invoke-interface {v2, v0}, Lcom/desay_svautomotive/p023a/InterfaceC0533i;->mo217a(I)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object p1, p0, Lcom/desay_svautomotive/p023a/C0526b$1;->this$0:Lcom/desay_svautomotive/p023a/C0526b;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/desay_svautomotive/p023a/C0526b;->a(Lcom/desay_svautomotive/p023a/C0526b;)Lcom/desay_svautomotive/p023a/C0534j;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    iget-object p1, p0, Lcom/desay_svautomotive/p023a/C0526b$1;->this$0:Lcom/desay_svautomotive/p023a/C0526b;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/desay_svautomotive/p023a/C0526b;->a(Lcom/desay_svautomotive/p023a/C0526b;)Lcom/desay_svautomotive/p023a/C0534j;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const/16 v1, 0x1388

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/desay_svautomotive/p023a/C0534j;->m268a(II)V

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void

    .line 74
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    goto :goto_3

    .line 76
    :goto_2
    throw v0

    .line 77
    :goto_3
    goto :goto_2
.end method

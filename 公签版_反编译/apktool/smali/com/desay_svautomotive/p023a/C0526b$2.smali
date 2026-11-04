.class Lcom/desay_svautomotive/p023a/C0526b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/desay_svautomotive/p023a/C0534j$a;


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
    iput-object p1, p0, Lcom/desay_svautomotive/p023a/C0526b$2;->this$0:Lcom/desay_svautomotive/p023a/C0526b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public mo239a(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/desay_svautomotive/p023a/C0526b$2;->this$0:Lcom/desay_svautomotive/p023a/C0526b;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/desay_svautomotive/p023a/C0526b;->a(Lcom/desay_svautomotive/p023a/C0526b;)Lcom/desay_svautomotive/p023a/C0534j;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/desay_svautomotive/p023a/C0526b$2;->this$0:Lcom/desay_svautomotive/p023a/C0526b;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/desay_svautomotive/p023a/C0526b;->a(Lcom/desay_svautomotive/p023a/C0526b;)Lcom/desay_svautomotive/p023a/C0534j;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Lcom/desay_svautomotive/p023a/C0534j;->m269a(I)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/desay_svautomotive/p023a/C0526b$2;->this$0:Lcom/desay_svautomotive/p023a/C0526b;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/desay_svautomotive/p023a/C0526b;->a(Lcom/desay_svautomotive/p023a/C0526b;)Lcom/desay_svautomotive/p023a/C0534j;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, v0}, Lcom/desay_svautomotive/p023a/C0534j;->m270b(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/desay_svautomotive/p023a/C0526b$2;->this$0:Lcom/desay_svautomotive/p023a/C0526b;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/desay_svautomotive/p023a/C0526b;->m223c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :catchall_0
    return-void
.end method

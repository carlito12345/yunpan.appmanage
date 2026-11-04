.class Lcom/desay_svautomotive/p023a/C0534j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desay_svautomotive/p023a/C0534j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private f319b:I

.field final synthetic this$0:Lcom/desay_svautomotive/p023a/C0534j;


# direct methods
.method public constructor <init>(Lcom/desay_svautomotive/p023a/C0534j;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/desay_svautomotive/p023a/C0534j$b;->this$0:Lcom/desay_svautomotive/p023a/C0534j;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/desay_svautomotive/p023a/C0534j$b;->f319b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public m271a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/desay_svautomotive/p023a/C0534j$b;->f319b:I

    .line 2
    .line 3
    return v0
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/p023a/C0534j$b;->this$0:Lcom/desay_svautomotive/p023a/C0534j;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/desay_svautomotive/p023a/C0534j;->b(Lcom/desay_svautomotive/p023a/C0534j;)Landroid/util/SparseArray;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/desay_svautomotive/p023a/C0534j$b;->f319b:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/desay_svautomotive/p023a/C0534j$b;->this$0:Lcom/desay_svautomotive/p023a/C0534j;

    .line 16
    .line 17
    iget v1, p0, Lcom/desay_svautomotive/p023a/C0534j$b;->f319b:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/desay_svautomotive/p023a/C0534j$b;->this$0:Lcom/desay_svautomotive/p023a/C0534j;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/desay_svautomotive/p023a/C0534j;->a(Lcom/desay_svautomotive/p023a/C0534j;)Lcom/desay_svautomotive/p023a/C0534j$a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget v0, p0, Lcom/desay_svautomotive/p023a/C0534j$b;->f319b:I

    .line 30
    .line 31
    const v1, -0xffff

    .line 32
    .line 33
    .line 34
    if-eq v1, v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/desay_svautomotive/p023a/C0534j$b;->this$0:Lcom/desay_svautomotive/p023a/C0534j;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/desay_svautomotive/p023a/C0534j;->a(Lcom/desay_svautomotive/p023a/C0534j;)Lcom/desay_svautomotive/p023a/C0534j$a;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget v1, p0, Lcom/desay_svautomotive/p023a/C0534j$b;->f319b:I

    .line 43
    .line 44
    invoke-interface {v0, v1}, Lcom/desay_svautomotive/p023a/C0534j$a;->mo239a(I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/desay_svautomotive/p023a/C0534j$b;->this$0:Lcom/desay_svautomotive/p023a/C0534j;

    .line 49
    .line 50
    :goto_0
    invoke-virtual {v0, v1}, Lcom/desay_svautomotive/p023a/C0534j;->m270b(I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

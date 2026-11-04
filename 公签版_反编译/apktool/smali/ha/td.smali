.class public final Lha/td;
.super Le9/a;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lx9/w3;

.field public final synthetic d:Lha/ud;


# direct methods
.method public constructor <init>(Lha/ud;Ljava/lang/String;Lx9/w3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/td;->d:Lha/ud;

    .line 2
    .line 3
    iput-object p2, p0, Lha/td;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lha/td;->c:Lx9/w3;

    .line 6
    .line 7
    invoke-direct {p0}, Le9/a;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final f0()V
    .locals 1

    .line 1
    const-string v0, "\u521b\u5efa\u76ee\u5f55\u5931\u8d25"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g0(Lv3/f;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lha/td;->d:Lha/ud;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, ""

    .line 5
    .line 6
    invoke-virtual {p1, v1, v0, v0}, Lha/ud;->b(Ljava/lang/String;IZ)V

    .line 7
    .line 8
    .line 9
    const-string v1, "\u65b0\u5efa\u6210\u529f"

    .line 10
    .line 11
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p1, Lha/ud;->l:Lx9/e0;

    .line 15
    .line 16
    new-instance v2, Lx9/w3;

    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v4, p0, Lha/td;->c:Lx9/w3;

    .line 24
    .line 25
    iget-object v4, v4, Lx9/w3;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v4, "/"

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v4, p0, Lha/td;->b:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-direct {v2, v4, v3}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0, v2}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p1, Lha/ud;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelectionWithSmooth(I)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p1, Lha/ud;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p1, Lha/ud;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 63
    .line 64
    .line 65
    return-void
.end method

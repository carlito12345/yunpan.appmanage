.class public final synthetic Lta/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lv8/c;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/service/AccService;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/service/AccService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lta/c;->a:Lcom/yunpan/appmanage/service/AccService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lv8/a;Landroid/view/View;)V
    .locals 3

    .line 1
    check-cast p2, Landroid/widget/ImageView;

    .line 2
    .line 3
    sget-object p1, Lwa/t;->a:Lwa/u;

    .line 4
    .line 5
    invoke-virtual {p1}, Lwa/u;->c()V

    .line 6
    .line 7
    .line 8
    const-string p2, ""

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lwa/u;->f(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lwa/u;->e(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    :try_start_0
    iput-boolean p2, p1, Lwa/u;->S:Z

    .line 18
    .line 19
    iget-object v0, p1, Lwa/u;->b:Lz7/s;

    .line 20
    .line 21
    const-string v1, "AutoRotationGlobalHorizontal"

    .line 22
    .line 23
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :catch_0
    invoke-virtual {p1}, Lwa/u;->i()V

    .line 29
    .line 30
    .line 31
    :try_start_1
    iput-boolean p2, p1, Lwa/u;->T:Z

    .line 32
    .line 33
    iget-object p2, p1, Lwa/u;->b:Lz7/s;

    .line 34
    .line 35
    const-string v0, "AutoRotationGlobalVertical"

    .line 36
    .line 37
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {p2, v0, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    .line 41
    .line 42
    :catch_1
    invoke-virtual {p1}, Lwa/u;->i()V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lta/c;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 46
    .line 47
    invoke-static {p1}, Lif/a;->G0(Lcom/yunpan/appmanage/service/AccService;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lta/c;->a:Lcom/yunpan/appmanage/service/AccService;

    invoke-static {v0, p1}, Lcom/yunpan/appmanage/service/AccService;->a(Lcom/yunpan/appmanage/service/AccService;Lmc/b;)V

    return-void
.end method

.class public final synthetic Lha/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/ea;
.implements Lea/e;


# instance fields
.field public final synthetic a:Lha/m0;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lha/m0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/l0;->a:Lha/m0;

    iput p2, p0, Lha/l0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lha/l0;->a:Lha/m0;

    .line 2
    .line 3
    iget v1, p0, Lha/l0;->b:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    iget-object p1, v0, Lha/m0;->l:Lx9/t2;

    .line 9
    .line 10
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-ne p1, v2, :cond_0

    .line 15
    .line 16
    iget-object p1, v0, Lha/m0;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, v0, Lha/m0;->l:Lx9/t2;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lc6/g;->C(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    if-ne p1, v2, :cond_2

    .line 28
    .line 29
    new-instance p1, Lha/i0;

    .line 30
    .line 31
    iget-object v2, v0, Lha/m0;->l:Lx9/t2;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lz7/s;

    .line 38
    .line 39
    new-instance v3, Lha/l0;

    .line 40
    .line 41
    invoke-direct {v3, v0, v1}, Lha/l0;-><init>(Lha/m0;I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lha/a4;->a:Landroid/app/Activity;

    .line 45
    .line 46
    iget-object v0, v0, Lha/a4;->b:Landroid/content/Context;

    .line 47
    .line 48
    invoke-direct {p1, v1, v0, v2, v3}, Lha/i0;-><init>(Landroid/app/Activity;Landroid/content/Context;Lz7/s;Lea/e;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public k(Lz7/s;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lha/l0;->a:Lha/m0;

    .line 2
    .line 3
    iget-object v0, v0, Lha/m0;->l:Lx9/t2;

    .line 4
    .line 5
    iget v1, p0, Lha/l0;->b:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

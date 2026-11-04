.class public final Lx9/p3;
.super Lc6/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc6/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final B(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    new-instance p1, Lh6/a;

    .line 2
    .line 3
    const p3, 0x7f0e014c

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, p3, p2}, Lh6/a;-><init>(ILandroid/view/ViewGroup;)V

    .line 7
    .line 8
    .line 9
    return-object p1
.end method

.method public final z(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lh6/a;

    .line 2
    .line 3
    check-cast p3, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 4
    .line 5
    iget-object p2, p3, Lcom/yunpan/appmanage/bean/NameValueBean;->name:Ljava/lang/String;

    .line 6
    .line 7
    const v0, 0x7f0b0523

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    const p2, 0x7f0b0607

    .line 14
    .line 15
    .line 16
    iget-object v0, p3, Lcom/yunpan/appmanage/bean/NameValueBean;->value:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p3, Lcom/yunpan/appmanage/bean/NameValueBean;->name:Ljava/lang/String;

    .line 22
    .line 23
    const-string p3, "\u6743\u9650\uff1a"

    .line 24
    .line 25
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    const p3, 0x7f0b0521

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p3, p2}, Lh6/a;->d(IZ)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

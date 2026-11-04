.class public final synthetic Lha/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/g1;

.field public final synthetic c:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lha/g1;Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    iput p3, p0, Lha/z0;->a:I

    iput-object p1, p0, Lha/z0;->b:Lha/g1;

    iput-object p2, p0, Lha/z0;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Lha/z0;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lha/ie;

    .line 7
    .line 8
    iget-object v0, p0, Lha/z0;->b:Lha/g1;

    .line 9
    .line 10
    iget-object v1, v0, Lha/g1;->A:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v2, Lha/b1;

    .line 13
    .line 14
    iget-object v3, p0, Lha/z0;->c:Landroid/widget/TextView;

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-direct {v2, v0, v3, v4}, Lha/b1;-><init>(Lha/g1;Landroid/widget/TextView;I)V

    .line 18
    .line 19
    .line 20
    iget-object v3, v0, Lha/a4;->a:Landroid/app/Activity;

    .line 21
    .line 22
    iget-object v0, v0, Lha/a4;->b:Landroid/content/Context;

    .line 23
    .line 24
    invoke-direct {p1, v3, v0, v1, v2}, Lha/ie;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/he;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    new-instance p1, Lha/ie;

    .line 32
    .line 33
    iget-object v0, p0, Lha/z0;->b:Lha/g1;

    .line 34
    .line 35
    iget-object v1, v0, Lha/g1;->y:Ljava/util/ArrayList;

    .line 36
    .line 37
    new-instance v2, Lha/b1;

    .line 38
    .line 39
    iget-object v3, p0, Lha/z0;->c:Landroid/widget/TextView;

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-direct {v2, v0, v3, v4}, Lha/b1;-><init>(Lha/g1;Landroid/widget/TextView;I)V

    .line 43
    .line 44
    .line 45
    iget-object v3, v0, Lha/a4;->a:Landroid/app/Activity;

    .line 46
    .line 47
    iget-object v0, v0, Lha/a4;->b:Landroid/content/Context;

    .line 48
    .line 49
    invoke-direct {p1, v3, v0, v1, v2}, Lha/ie;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/he;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lha/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/he;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/g1;

.field public final synthetic c:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lha/g1;Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    iput p3, p0, Lha/b1;->a:I

    iput-object p1, p0, Lha/b1;->b:Lha/g1;

    iput-object p2, p0, Lha/b1;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 2

    .line 1
    iget v0, p0, Lha/b1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/b1;->b:Lha/g1;

    .line 7
    .line 8
    iget-object v1, v0, Lha/g1;->A:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 15
    .line 16
    iput-object p1, v0, Lha/g1;->r:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v0, p0, Lha/b1;->c:Landroid/widget/TextView;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lha/b1;->b:Lha/g1;

    .line 27
    .line 28
    iget-object v1, v0, Lha/g1;->y:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 35
    .line 36
    iput-object p1, v0, Lha/g1;->q:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v0, p0, Lha/b1;->c:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

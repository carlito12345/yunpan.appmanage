.class public final synthetic Lha/c7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/he;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/d2;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lha/d2;Ljava/util/ArrayList;Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    iput p4, p0, Lha/c7;->a:I

    iput-object p1, p0, Lha/c7;->b:Lha/d2;

    iput-object p2, p0, Lha/c7;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lha/c7;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 2

    .line 1
    iget v0, p0, Lha/c7;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/c7;->b:Lha/d2;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lha/c7;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 18
    .line 19
    iput-object p1, v0, Lha/d2;->i:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v0, p0, Lha/c7;->d:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    iget-object v0, p0, Lha/c7;->b:Lha/d2;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lha/c7;->c:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 41
    .line 42
    iput-object p1, v0, Lha/d2;->j:Ljava/lang/Object;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v0, p0, Lha/c7;->d:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

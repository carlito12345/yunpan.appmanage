.class public final synthetic Lua/r6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/ea;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivitySidebarSet;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/r6;->a:I

    iput-object p1, p0, Lua/r6;->b:Lcom/yunpan/appmanage/ui/ActivitySidebarSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 3

    .line 1
    iget v0, p0, Lua/r6;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/r6;->b:Lcom/yunpan/appmanage/ui/ActivitySidebarSet;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->V:Landroid/widget/TextView;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->S0:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->z()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    iget-object v0, p0, Lua/r6;->b:Lcom/yunpan/appmanage/ui/ActivitySidebarSet;

    .line 26
    .line 27
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->T:Landroid/widget/TextView;

    .line 28
    .line 29
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->S0:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/CharSequence;

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->z()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_1
    iget-object v0, p0, Lua/r6;->b:Lcom/yunpan/appmanage/ui/ActivitySidebarSet;

    .line 45
    .line 46
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->S:Landroid/widget/TextView;

    .line 47
    .line 48
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->S0:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Ljava/lang/CharSequence;

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->z()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

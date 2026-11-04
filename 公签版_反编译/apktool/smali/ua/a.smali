.class public final synthetic Lua/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityAccessibility;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAccessibility;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/a;->a:I

    iput-object p1, p0, Lua/a;->b:Lcom/yunpan/appmanage/ui/ActivityAccessibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lua/a;->b:Lcom/yunpan/appmanage/ui/ActivityAccessibility;

    .line 2
    .line 3
    iget v0, p0, Lua/a;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->G:I

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Lha/b;

    .line 14
    .line 15
    invoke-direct {v0, p1, p1}, Lha/b;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->G:I

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

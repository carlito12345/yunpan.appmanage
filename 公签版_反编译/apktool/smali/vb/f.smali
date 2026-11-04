.class public final synthetic Lvb/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/carsdk/k0;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/carsdk/k0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lvb/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvb/f;->b:Lcom/yunpan/appmanage/carsdk/k0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yunpan/appmanage/carsdk/k0;Landroid/content/Context;)V
    .locals 0

    .line 2
    const/4 p2, 0x1

    iput p2, p0, Lvb/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvb/f;->b:Lcom/yunpan/appmanage/carsdk/k0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget p1, p0, Lvb/f;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lvb/f;->b:Lcom/yunpan/appmanage/carsdk/k0;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object p1, p0, Lvb/f;->b:Lcom/yunpan/appmanage/carsdk/k0;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

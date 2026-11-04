.class public final synthetic Lua/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/t;->a:I

    iput-object p1, p0, Lua/t;->b:Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lua/t;->b:Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;

    .line 2
    .line 3
    iget v0, p0, Lua/t;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->G:I

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Lha/ed;

    .line 14
    .line 15
    iget-object v1, p1, Lda/g;->A:Lda/g;

    .line 16
    .line 17
    new-instance v2, Lua/v;

    .line 18
    .line 19
    invoke-direct {v2, p1}, Lua/v;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;)V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-direct {v0, p1, v1, v3, v2}, Lha/ed;-><init>(Landroid/app/Activity;Lda/g;ZLha/dd;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->G:I

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

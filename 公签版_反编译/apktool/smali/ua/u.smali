.class public final synthetic Lua/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/u;->a:I

    iput-object p1, p0, Lua/u;->b:Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 p3, 0x1

    .line 3
    iget-object v0, p0, Lua/u;->b:Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;

    .line 4
    .line 5
    const/16 v1, 0x14

    .line 6
    .line 7
    iget v2, p0, Lua/u;->a:I

    .line 8
    .line 9
    packed-switch v2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    if-ne p2, v1, :cond_0

    .line 13
    .line 14
    iget-object p2, v0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->F:Lx9/z4;

    .line 15
    .line 16
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget p2, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->G:I

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return p1

    .line 30
    :pswitch_0
    if-ne p2, v1, :cond_2

    .line 31
    .line 32
    iget-object p2, v0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->F:Lx9/z4;

    .line 33
    .line 34
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_3

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    sget p2, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->G:I

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_1
    return p1

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

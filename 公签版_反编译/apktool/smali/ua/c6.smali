.class public final synthetic Lua/c6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityRunMemory;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityRunMemory;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/c6;->a:I

    iput-object p1, p0, Lua/c6;->b:Lcom/yunpan/appmanage/ui/ActivityRunMemory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lua/c6;->b:Lcom/yunpan/appmanage/ui/ActivityRunMemory;

    .line 2
    .line 3
    iget v0, p0, Lua/c6;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->I:I

    .line 9
    .line 10
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityPs;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->I:I

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v0, Lua/d6;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lua/d6;-><init>(Lcom/yunpan/appmanage/ui/ActivityRunMemory;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lmc/c;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Lka/c;

    .line 47
    .line 48
    const/16 v2, 0x1a

    .line 49
    .line 50
    invoke-direct {v1, v2, p1}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->I:I

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_2
    sget v0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->I:I

    .line 64
    .line 65
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityPss;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

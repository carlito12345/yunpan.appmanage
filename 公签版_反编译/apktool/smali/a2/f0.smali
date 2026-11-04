.class public final synthetic La2/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    iput p3, p0, La2/f0;->a:I

    iput-object p1, p0, La2/f0;->c:Ljava/lang/Object;

    iput-boolean p2, p0, La2/f0;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-boolean v0, p0, La2/f0;->b:Z

    .line 2
    .line 3
    iget-object v1, p0, La2/f0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget v2, p0, La2/f0;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v1, Lua/a5;

    .line 11
    .line 12
    iget-object v1, v1, Lua/a5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->D:Landroid/widget/TextView;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "onReverseStateChanged\uff1a"

    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_0
    check-cast v1, La2/j0;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    sget-object v2, Lu1/f0;->a:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v1, v1, La2/j0;->c:Ly1/t;

    .line 42
    .line 43
    iget-object v1, v1, Ly1/t;->a:Ly1/x;

    .line 44
    .line 45
    iget-boolean v2, v1, Ly1/x;->U0:Z

    .line 46
    .line 47
    if-ne v2, v0, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iput-boolean v0, v1, Ly1/x;->U0:Z

    .line 51
    .line 52
    new-instance v2, Lha/qa;

    .line 53
    .line 54
    const/16 v3, 0x9

    .line 55
    .line 56
    invoke-direct {v2, v3, v0}, Lha/qa;-><init>(IZ)V

    .line 57
    .line 58
    .line 59
    const/16 v0, 0x17

    .line 60
    .line 61
    iget-object v1, v1, Ly1/x;->m:Lu1/m;

    .line 62
    .line 63
    invoke-virtual {v1, v0, v2}, Lu1/m;->e(ILu1/j;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

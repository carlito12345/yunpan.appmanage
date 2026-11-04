.class public final synthetic Lua/z5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityRotation;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityRotation;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/z5;->a:I

    iput-object p1, p0, Lua/z5;->b:Lcom/yunpan/appmanage/ui/ActivityRotation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lua/z5;->b:Lcom/yunpan/appmanage/ui/ActivityRotation;

    .line 2
    .line 3
    iget v0, p0, Lua/z5;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/yunpan/appmanage/ui/ActivityRotation;->F:I

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 14
    .line 15
    const-string v1, ""

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lwa/u;->e(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lwa/u;->f(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    iget-object v2, p1, Lcom/yunpan/appmanage/ui/ActivityRotation;->D:Lx9/o4;

    .line 26
    .line 27
    invoke-virtual {v2}, Lc6/g;->v()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-ge v1, v2, :cond_1

    .line 36
    .line 37
    iget-object v2, p1, Lcom/yunpan/appmanage/ui/ActivityRotation;->D:Lx9/o4;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/yunpan/appmanage/bean/RotationBean;

    .line 44
    .line 45
    iget v2, v2, Lcom/yunpan/appmanage/bean/RotationBean;->mode:I

    .line 46
    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    iget-object v2, p1, Lcom/yunpan/appmanage/ui/ActivityRotation;->D:Lx9/o4;

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/yunpan/appmanage/bean/RotationBean;

    .line 56
    .line 57
    iput v0, v2, Lcom/yunpan/appmanage/bean/RotationBean;->mode:I

    .line 58
    .line 59
    iget-object v2, p1, Lcom/yunpan/appmanage/ui/ActivityRotation;->D:Lx9/o4;

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 62
    .line 63
    .line 64
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    return-void

    .line 68
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityRotation;->F:I

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    new-instance v0, Lha/kb;

    .line 74
    .line 75
    invoke-direct {v0, p1, p1}, Lha/kb;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :pswitch_1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityRotation;->F:I

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

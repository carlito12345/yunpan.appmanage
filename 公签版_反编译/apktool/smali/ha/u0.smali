.class public final synthetic Lha/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/x0;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lha/x0;Landroid/widget/TextView;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lha/u0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/u0;->b:Lha/x0;

    iput-object p2, p0, Lha/u0;->d:Landroid/widget/TextView;

    iput-object p3, p0, Lha/u0;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lha/x0;Ljava/util/ArrayList;Landroid/widget/TextView;I)V
    .locals 0

    .line 2
    iput p4, p0, Lha/u0;->a:I

    iput-object p1, p0, Lha/u0;->b:Lha/x0;

    iput-object p2, p0, Lha/u0;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lha/u0;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget p1, p0, Lha/u0;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/u0;->b:Lha/x0;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lha/ie;

    .line 12
    .line 13
    new-instance v1, Lha/t0;

    .line 14
    .line 15
    iget-object v2, p0, Lha/u0;->c:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v3, p0, Lha/u0;->d:Landroid/widget/TextView;

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-direct {v1, p1, v2, v3, v4}, Lha/t0;-><init>(Lha/x0;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

    .line 21
    .line 22
    .line 23
    iget-object v3, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 24
    .line 25
    iget-object p1, p1, Lha/a4;->b:Landroid/content/Context;

    .line 26
    .line 27
    invoke-direct {v0, v3, p1, v2, v1}, Lha/ie;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/he;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_0
    iget-object p1, p0, Lha/u0;->b:Lha/x0;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance v0, Lha/ie;

    .line 40
    .line 41
    new-instance v1, Lha/t0;

    .line 42
    .line 43
    iget-object v2, p0, Lha/u0;->c:Ljava/util/ArrayList;

    .line 44
    .line 45
    iget-object v3, p0, Lha/u0;->d:Landroid/widget/TextView;

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-direct {v1, p1, v2, v3, v4}, Lha/t0;-><init>(Lha/x0;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

    .line 49
    .line 50
    .line 51
    iget-object v3, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 52
    .line 53
    iget-object p1, p1, Lha/a4;->b:Landroid/content/Context;

    .line 54
    .line 55
    invoke-direct {v0, v3, p1, v2, v1}, Lha/ie;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/he;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_1
    iget-object p1, p0, Lha/u0;->b:Lha/x0;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    new-instance v6, Lha/ja;

    .line 68
    .line 69
    new-instance v5, Lha/s0;

    .line 70
    .line 71
    invoke-direct {v5, p1}, Lha/s0;-><init>(Lha/x0;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 75
    .line 76
    iget-object v2, p1, Lha/a4;->b:Landroid/content/Context;

    .line 77
    .line 78
    iget-object v3, p0, Lha/u0;->d:Landroid/widget/TextView;

    .line 79
    .line 80
    iget-object v4, p0, Lha/u0;->c:Ljava/util/ArrayList;

    .line 81
    .line 82
    move-object v0, v6

    .line 83
    invoke-direct/range {v0 .. v5}, Lha/ja;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Ljava/util/List;Lha/ia;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6}, Lha/a4;->show()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

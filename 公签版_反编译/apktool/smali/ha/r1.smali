.class public final synthetic Lha/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/o1;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lha/o1;Ljava/util/ArrayList;Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    iput p4, p0, Lha/r1;->a:I

    iput-object p1, p0, Lha/r1;->b:Lha/o1;

    iput-object p2, p0, Lha/r1;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lha/r1;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget p1, p0, Lha/r1;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/r1;->b:Lha/o1;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v6, Lha/fa;

    .line 12
    .line 13
    new-instance v5, Lha/m1;

    .line 14
    .line 15
    iget-object v4, p0, Lha/r1;->c:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v0, p0, Lha/r1;->d:Landroid/widget/TextView;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-direct {v5, v0, v4, v1}, Lha/m1;-><init>(Landroid/widget/TextView;Ljava/util/ArrayList;I)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p1, Lha/a4;->b:Landroid/content/Context;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    iget-object v1, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 27
    .line 28
    move-object v0, v6

    .line 29
    invoke-direct/range {v0 .. v5}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6}, Lha/a4;->show()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    iget-object p1, p0, Lha/r1;->b:Lha/o1;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v6, Lha/fa;

    .line 42
    .line 43
    new-instance v5, Lha/m1;

    .line 44
    .line 45
    iget-object v4, p0, Lha/r1;->c:Ljava/util/ArrayList;

    .line 46
    .line 47
    iget-object v0, p0, Lha/r1;->d:Landroid/widget/TextView;

    .line 48
    .line 49
    const/4 v1, 0x2

    .line 50
    invoke-direct {v5, v0, v4, v1}, Lha/m1;-><init>(Landroid/widget/TextView;Ljava/util/ArrayList;I)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p1, Lha/a4;->b:Landroid/content/Context;

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    iget-object v1, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 57
    .line 58
    move-object v0, v6

    .line 59
    invoke-direct/range {v0 .. v5}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6}, Lha/a4;->show()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

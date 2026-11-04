.class public final synthetic Lha/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/g1;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lha/g1;Ljava/util/ArrayList;Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    iput p4, p0, Lha/a1;->a:I

    iput-object p1, p0, Lha/a1;->b:Lha/g1;

    iput-object p2, p0, Lha/a1;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lha/a1;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Lha/a1;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/a1;->b:Lha/g1;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lha/ie;

    .line 12
    .line 13
    new-instance v1, Lha/c1;

    .line 14
    .line 15
    iget-object v2, p0, Lha/a1;->c:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v3, p0, Lha/a1;->d:Landroid/widget/TextView;

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    invoke-direct {v1, p1, v2, v3, v4}, Lha/c1;-><init>(Lha/g1;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

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
    iget-object p1, p0, Lha/a1;->b:Lha/g1;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance v0, Lha/ie;

    .line 40
    .line 41
    new-instance v1, Lha/c1;

    .line 42
    .line 43
    iget-object v2, p0, Lha/a1;->c:Ljava/util/ArrayList;

    .line 44
    .line 45
    iget-object v3, p0, Lha/a1;->d:Landroid/widget/TextView;

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-direct {v1, p1, v2, v3, v4}, Lha/c1;-><init>(Lha/g1;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

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
    iget-object p1, p0, Lha/a1;->b:Lha/g1;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    new-instance v0, Lha/ie;

    .line 68
    .line 69
    new-instance v1, Lha/c1;

    .line 70
    .line 71
    iget-object v2, p0, Lha/a1;->c:Ljava/util/ArrayList;

    .line 72
    .line 73
    iget-object v3, p0, Lha/a1;->d:Landroid/widget/TextView;

    .line 74
    .line 75
    const/4 v4, 0x1

    .line 76
    invoke-direct {v1, p1, v2, v3, v4}, Lha/c1;-><init>(Lha/g1;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

    .line 77
    .line 78
    .line 79
    iget-object v3, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 80
    .line 81
    iget-object p1, p1, Lha/a4;->b:Landroid/content/Context;

    .line 82
    .line 83
    invoke-direct {v0, v3, p1, v2, v1}, Lha/ie;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/he;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :pswitch_2
    iget-object p1, p0, Lha/a1;->b:Lha/g1;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    new-instance v0, Lha/ie;

    .line 96
    .line 97
    new-instance v1, Lha/c1;

    .line 98
    .line 99
    iget-object v2, p0, Lha/a1;->c:Ljava/util/ArrayList;

    .line 100
    .line 101
    iget-object v3, p0, Lha/a1;->d:Landroid/widget/TextView;

    .line 102
    .line 103
    const/4 v4, 0x3

    .line 104
    invoke-direct {v1, p1, v2, v3, v4}, Lha/c1;-><init>(Lha/g1;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

    .line 105
    .line 106
    .line 107
    iget-object v3, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 108
    .line 109
    iget-object p1, p1, Lha/a4;->b:Landroid/content/Context;

    .line 110
    .line 111
    invoke-direct {v0, v3, p1, v2, v1}, Lha/ie;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/he;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

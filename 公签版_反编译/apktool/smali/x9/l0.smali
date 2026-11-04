.class public final Lx9/l0;
.super Lc6/g;
.source "SourceFile"


# instance fields
.field public final h:Landroid/app/Activity;

.field public final i:Landroid/content/Context;

.field public final j:Ljava/util/ArrayList;

.field public final k:Lx9/k0;

.field public final l:Lx9/k0;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lc6/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lx9/l0;->j:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v1, Lx9/k0;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p0, v2}, Lx9/k0;-><init>(Lx9/l0;I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lx9/l0;->k:Lx9/k0;

    .line 18
    .line 19
    new-instance v1, Lx9/k0;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-direct {v1, p0, v2}, Lx9/k0;-><init>(Lx9/l0;I)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lx9/l0;->l:Lx9/k0;

    .line 26
    .line 27
    iput-object p1, p0, Lx9/l0;->h:Landroid/app/Activity;

    .line 28
    .line 29
    iput-object p2, p0, Lx9/l0;->i:Landroid/content/Context;

    .line 30
    .line 31
    new-instance p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    const-string v1, "getStringExtra"

    .line 35
    .line 36
    invoke-direct {p1, p2, v1}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    new-instance p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 43
    .line 44
    const/4 p2, 0x2

    .line 45
    const-string v1, "getIntExtra"

    .line 46
    .line 47
    invoke-direct {p1, p2, v1}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    new-instance p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 54
    .line 55
    const/4 p2, 0x3

    .line 56
    const-string v1, "getLongExtra"

    .line 57
    .line 58
    invoke-direct {p1, p2, v1}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    new-instance p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 65
    .line 66
    const/4 p2, 0x4

    .line 67
    const-string v1, "getFloatExtra"

    .line 68
    .line 69
    invoke-direct {p1, p2, v1}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    new-instance p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 76
    .line 77
    const/4 p2, 0x5

    .line 78
    const-string v1, "getDoubleExtra"

    .line 79
    .line 80
    invoke-direct {p1, p2, v1}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    new-instance p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 87
    .line 88
    const/4 p2, 0x6

    .line 89
    const-string v1, "getBooleanExtra"

    .line 90
    .line 91
    invoke-direct {p1, p2, v1}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    return-void
.end method


# virtual methods
.method public final B(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    new-instance p1, Lh6/a;

    .line 2
    .line 3
    const p3, 0x7f0e015e

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, p3, p2}, Lh6/a;-><init>(ILandroid/view/ViewGroup;)V

    .line 7
    .line 8
    .line 9
    return-object p1
.end method

.method public final z(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lh6/a;

    .line 2
    .line 3
    check-cast p3, Lz7/s;

    .line 4
    .line 5
    const-string v0, "extraName"

    .line 6
    .line 7
    invoke-virtual {p3, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v1, 0x7f0b05f7

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    const v0, 0x7f0b0438

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lh6/a;->a(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/widget/EditText;

    .line 29
    .line 30
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lea/a;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    :catch_0
    new-instance v1, Lea/a;

    .line 40
    .line 41
    new-instance v2, Lx9/j0;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-direct {v2, p0, v3}, Lx9/j0;-><init>(Lx9/l0;I)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, p2, v0, v2}, Lea/a;-><init>(ILandroid/widget/EditText;Lea/d;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 54
    .line 55
    .line 56
    const-string v1, "name"

    .line 57
    .line 58
    invoke-virtual {p3, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    const v0, 0x7f0b0454

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lh6/a;->a(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Landroid/widget/EditText;

    .line 77
    .line 78
    :try_start_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lea/a;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    .line 86
    .line 87
    :catch_1
    new-instance v1, Lea/a;

    .line 88
    .line 89
    new-instance v2, Lx9/j0;

    .line 90
    .line 91
    const/4 v3, 0x1

    .line 92
    invoke-direct {v2, p0, v3}, Lx9/j0;-><init>(Lx9/l0;I)V

    .line 93
    .line 94
    .line 95
    invoke-direct {v1, p2, v0, v2}, Lea/a;-><init>(ILandroid/widget/EditText;Lea/d;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    .line 103
    .line 104
    const-string v1, "value"

    .line 105
    .line 106
    invoke-virtual {p3, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-virtual {p3}, Lz7/p;->i()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    const p3, 0x7f0b0416

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p3}, Lh6/a;->a(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    check-cast p3, Landroid/widget/ImageView;

    .line 125
    .line 126
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lx9/l0;->k:Lx9/k0;

    .line 134
    .line 135
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .line 137
    .line 138
    const p3, 0x7f0b05f6

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p3}, Lh6/a;->a(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 146
    .line 147
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    iget-object p2, p0, Lx9/l0;->l:Lx9/k0;

    .line 155
    .line 156
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method

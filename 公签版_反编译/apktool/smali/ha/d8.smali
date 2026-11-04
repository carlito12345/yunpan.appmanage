.class public final Lha/d8;
.super Lha/a4;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final A:Ljava/util/ArrayList;

.field public g:Z

.field public h:Landroid/widget/EditText;

.field public i:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public j:Landroid/widget/ImageView;

.field public k:Lcom/yunpan/appmanage/bean/KeyCodeBean;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field public v:Landroid/widget/TextView;

.field public w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public x:Lx9/t2;

.field public final y:Lz7/s;

.field public final z:Lha/c8;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lz7/s;Lua/u3;)V
    .locals 1

    const v0, 0x7f0e00c5

    .line 18
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lha/d8;->g:Z

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lha/d8;->k:Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lha/d8;->A:Ljava/util/ArrayList;

    .line 22
    iput-object p4, p0, Lha/d8;->z:Lha/c8;

    .line 23
    iput-object p3, p0, Lha/d8;->y:Lz7/s;

    return-void
.end method

.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;Lcom/yunpan/appmanage/bean/KeyCodeBean;Lua/t3;)V
    .locals 1

    const v0, 0x7f0e00c5

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lha/d8;->g:Z

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lha/d8;->k:Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lha/d8;->A:Ljava/util/ArrayList;

    .line 5
    iput-object p4, p0, Lha/d8;->z:Lha/c8;

    .line 6
    new-instance p1, Lz7/s;

    invoke-direct {p1}, Lz7/s;-><init>()V

    iput-object p1, p0, Lha/d8;->y:Lz7/s;

    .line 7
    :try_start_0
    const-string p2, "name"

    iget-object p4, p3, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyName:Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string p2, "isOpen"

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, p4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 9
    const-string p2, "type"

    sget-object p4, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->MAP_TYPE_KEY:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    invoke-virtual {p4}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 10
    const-string p2, "key1"

    iget p4, p3, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 11
    const-string p2, "key1_name"

    iget-object p3, p3, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyName:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string p2, "key2"

    const/4 p3, -0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 13
    const-string p2, "key2_name"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string p2, "click"

    new-instance p3, Lz7/o;

    invoke-direct {p3}, Lz7/o;-><init>()V

    invoke-virtual {p1, p2, p3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 15
    const-string p2, "doubleClick"

    new-instance p3, Lz7/o;

    invoke-direct {p3}, Lz7/o;-><init>()V

    invoke-virtual {p1, p2, p3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 16
    const-string p2, "longClick"

    new-instance p3, Lz7/o;

    invoke-direct {p3}, Lz7/o;-><init>()V

    invoke-virtual {p1, p2, p3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 17
    const-string p2, "zhClick"

    new-instance p3, Lz7/o;

    invoke-direct {p3}, Lz7/o;-><init>()V

    invoke-virtual {p1, p2, p3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 1
    new-instance v0, Lha/a8;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lha/a8;-><init>(Lha/d8;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 7
    .line 8
    iget-object v2, p0, Lha/a4;->b:Landroid/content/Context;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v1, v2, p1, v3, v0}, Lha/t8;->a(Landroid/app/Activity;Landroid/content/Context;IZLea/e;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lha/d8;->y:Lz7/s;

    .line 2
    .line 3
    iget-object v1, p0, Lha/d8;->x:Lx9/t2;

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    const-string v1, "click"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    iget-object v4, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-ge v2, v4, :cond_0

    .line 36
    .line 37
    iget-object v4, p0, Lha/d8;->x:Lx9/t2;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lz7/o;->l(I)Lz7/p;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v4, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string v1, "doubleClick"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v2, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    :goto_1
    iget-object v4, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-ge v2, v4, :cond_1

    .line 75
    .line 76
    iget-object v4, p0, Lha/d8;->x:Lx9/t2;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lz7/o;->l(I)Lz7/p;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v4, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    const-string v1, "longClick"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-object v2, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-nez v2, :cond_2

    .line 105
    .line 106
    const/4 v2, 0x0

    .line 107
    :goto_2
    iget-object v4, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-ge v2, v4, :cond_2

    .line 114
    .line 115
    iget-object v4, p0, Lha/d8;->x:Lx9/t2;

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Lz7/o;->l(I)Lz7/p;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v4, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_2
    const-string v1, "zhClick"

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v1, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_3

    .line 144
    .line 145
    :goto_3
    iget-object v1, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-ge v3, v1, :cond_3

    .line 152
    .line 153
    iget-object v1, p0, Lha/d8;->x:Lx9/t2;

    .line 154
    .line 155
    invoke-virtual {v0, v3}, Lz7/o;->l(I)Lz7/p;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .line 165
    .line 166
    add-int/lit8 v3, v3, 0x1

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :catch_0
    :cond_3
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, v0, Lha/d8;->y:Lz7/s;

    .line 11
    .line 12
    const v3, 0x7f0b03b4

    .line 13
    .line 14
    .line 15
    const/4 v4, -0x1

    .line 16
    if-ne v1, v3, :cond_e

    .line 17
    .line 18
    iget-object v9, v0, Lha/d8;->A:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_d

    .line 25
    .line 26
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 27
    .line 28
    const-string v3, "\u53d6\u6d88\u7ec4\u5408\u952e"

    .line 29
    .line 30
    invoke-direct {v1, v4, v3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    const-string v1, "key1"

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_L_UP:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eq v1, v3, :cond_1

    .line 53
    .line 54
    new-instance v3, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-direct {v3, v4, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_1
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_L_DOWN:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eq v1, v3, :cond_2

    .line 77
    .line 78
    new-instance v3, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-direct {v3, v4, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    :cond_2
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_L_LEFT:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eq v1, v3, :cond_3

    .line 101
    .line 102
    new-instance v3, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-direct {v3, v4, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    :cond_3
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_L_RIGHT:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eq v1, v3, :cond_4

    .line 125
    .line 126
    new-instance v3, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-direct {v3, v4, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    :cond_4
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_R_MODE:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eq v1, v3, :cond_5

    .line 149
    .line 150
    new-instance v3, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 151
    .line 152
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-direct {v3, v4, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    :cond_5
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_R_VOICE:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 167
    .line 168
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eq v1, v3, :cond_6

    .line 173
    .line 174
    new-instance v3, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 175
    .line 176
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-direct {v3, v4, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    :cond_6
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_R_PREVIOUS:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 191
    .line 192
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-eq v1, v3, :cond_7

    .line 197
    .line 198
    new-instance v3, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 199
    .line 200
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-direct {v3, v4, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    :cond_7
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_R_NEXT:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 215
    .line 216
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-eq v1, v3, :cond_8

    .line 221
    .line 222
    new-instance v3, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 223
    .line 224
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-direct {v3, v4, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    :cond_8
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_R_UP:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 239
    .line 240
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    if-eq v1, v3, :cond_9

    .line 245
    .line 246
    new-instance v3, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 247
    .line 248
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-direct {v3, v4, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    :cond_9
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_R_DOWN:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 263
    .line 264
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    if-eq v1, v3, :cond_a

    .line 269
    .line 270
    new-instance v3, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 271
    .line 272
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-direct {v3, v4, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    :cond_a
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_R_MUTE:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 287
    .line 288
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    if-eq v1, v3, :cond_b

    .line 293
    .line 294
    new-instance v3, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 295
    .line 296
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-direct {v3, v4, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    :cond_b
    sget-object v2, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->KEYCODE_R_STAR:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 311
    .line 312
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    if-eq v1, v3, :cond_c

    .line 317
    .line 318
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 319
    .line 320
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    invoke-virtual {v2}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getDesc()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    invoke-direct {v1, v3, v2}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    :cond_c
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 335
    .line 336
    const/4 v2, -0x2

    .line 337
    const-string v3, "\u624b\u52a8\u6293\u53d6\u952e\u7801"

    .line 338
    .line 339
    invoke-direct {v1, v2, v3}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    :cond_d
    new-instance v1, Lha/ha;

    .line 346
    .line 347
    new-instance v10, Lha/a8;

    .line 348
    .line 349
    invoke-direct {v10, v0}, Lha/a8;-><init>(Lha/d8;)V

    .line 350
    .line 351
    .line 352
    iget-object v6, v0, Lha/a4;->a:Landroid/app/Activity;

    .line 353
    .line 354
    iget-object v7, v0, Lha/a4;->b:Landroid/content/Context;

    .line 355
    .line 356
    const/4 v8, 0x0

    .line 357
    move-object v5, v1

    .line 358
    invoke-direct/range {v5 .. v10}, Lha/ha;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ga;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 362
    .line 363
    .line 364
    goto/16 :goto_1

    .line 365
    .line 366
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    const v3, 0x7f0b0365

    .line 371
    .line 372
    .line 373
    if-ne v1, v3, :cond_f

    .line 374
    .line 375
    const/4 v1, 0x0

    .line 376
    invoke-virtual {v0, v1}, Lha/d8;->a(I)V

    .line 377
    .line 378
    .line 379
    goto/16 :goto_1

    .line 380
    .line 381
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    const v3, 0x7f0b0367

    .line 386
    .line 387
    .line 388
    const/4 v5, 0x1

    .line 389
    if-ne v1, v3, :cond_10

    .line 390
    .line 391
    invoke-virtual {v0, v5}, Lha/d8;->a(I)V

    .line 392
    .line 393
    .line 394
    goto/16 :goto_1

    .line 395
    .line 396
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    const v3, 0x7f0b0368

    .line 401
    .line 402
    .line 403
    const/4 v6, 0x2

    .line 404
    if-ne v1, v3, :cond_11

    .line 405
    .line 406
    invoke-virtual {v0, v6}, Lha/d8;->a(I)V

    .line 407
    .line 408
    .line 409
    goto/16 :goto_1

    .line 410
    .line 411
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    const v3, 0x7f0b036a

    .line 416
    .line 417
    .line 418
    const/4 v7, 0x3

    .line 419
    if-ne v1, v3, :cond_13

    .line 420
    .line 421
    iget-object v1, v0, Lha/d8;->k:Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 422
    .line 423
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 424
    .line 425
    if-ne v1, v4, :cond_12

    .line 426
    .line 427
    const-string v1, "\u8bf7\u5148\u8bbe\u7f6e\u7ec4\u5408\u952e"

    .line 428
    .line 429
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 430
    .line 431
    .line 432
    return-void

    .line 433
    :cond_12
    invoke-virtual {v0, v7}, Lha/d8;->a(I)V

    .line 434
    .line 435
    .line 436
    goto/16 :goto_1

    .line 437
    .line 438
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    iget-object v3, v0, Lha/d8;->z:Lha/c8;

    .line 443
    .line 444
    const v8, 0x7f0b0369

    .line 445
    .line 446
    .line 447
    if-ne v1, v8, :cond_1c

    .line 448
    .line 449
    iget-object v1, v0, Lha/d8;->x:Lx9/t2;

    .line 450
    .line 451
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    if-nez v1, :cond_14

    .line 456
    .line 457
    const-string v1, "\u8bf7\u6dfb\u52a0\u81f3\u5c11\u4e00\u4e2a\u64cd\u4f5c"

    .line 458
    .line 459
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 460
    .line 461
    .line 462
    goto/16 :goto_1

    .line 463
    .line 464
    :cond_14
    iget-object v1, v0, Lha/d8;->k:Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 465
    .line 466
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 467
    .line 468
    const-string v8, "keyType"

    .line 469
    .line 470
    if-ne v1, v4, :cond_16

    .line 471
    .line 472
    iget-object v1, v0, Lha/d8;->x:Lx9/t2;

    .line 473
    .line 474
    invoke-virtual {v1}, Lc6/g;->v()Ljava/util/List;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 483
    .line 484
    .line 485
    move-result v4

    .line 486
    if-eqz v4, :cond_16

    .line 487
    .line 488
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v4

    .line 492
    check-cast v4, Lz7/s;

    .line 493
    .line 494
    invoke-virtual {v4, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 495
    .line 496
    .line 497
    move-result-object v4

    .line 498
    invoke-virtual {v4}, Lz7/p;->e()I

    .line 499
    .line 500
    .line 501
    move-result v4

    .line 502
    if-ne v4, v7, :cond_15

    .line 503
    .line 504
    new-instance v1, Lha/z6;

    .line 505
    .line 506
    new-instance v2, Lha/j2;

    .line 507
    .line 508
    const/4 v3, 0x3

    .line 509
    invoke-direct {v2, v3}, Lha/j2;-><init>(I)V

    .line 510
    .line 511
    .line 512
    iget-object v10, v0, Lha/a4;->a:Landroid/app/Activity;

    .line 513
    .line 514
    iget-object v11, v0, Lha/a4;->b:Landroid/content/Context;

    .line 515
    .line 516
    const-string v12, "\u68c0\u6d4b\u5230\u60a8\u6ca1\u6709\u8bbe\u7f6e\u7ec4\u5408\u952e\uff0c\u4f46\u4f60\u5374\u8bbe\u7f6e\u4e86\u7ec4\u5408\u64cd\u4f5c\n\u8bf7\u5220\u9664\u7ec4\u5408\u64cd\u4f5c\uff0c\u6216\u8005\u8bbe\u7f6e\u7ec4\u5408\u952e"

    .line 517
    .line 518
    const-string v13, ""

    .line 519
    .line 520
    const-string v14, "\u597d\u7684"

    .line 521
    .line 522
    const-string v15, ""

    .line 523
    .line 524
    move-object v9, v1

    .line 525
    move-object/from16 v16, v2

    .line 526
    .line 527
    invoke-direct/range {v9 .. v16}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 531
    .line 532
    .line 533
    goto/16 :goto_1

    .line 534
    .line 535
    :cond_16
    iget-object v1, v0, Lha/d8;->h:Landroid/widget/EditText;

    .line 536
    .line 537
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    const-string v4, "name"

    .line 550
    .line 551
    invoke-virtual {v2, v4, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    iget-boolean v1, v0, Lha/d8;->g:Z

    .line 555
    .line 556
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    const-string v4, "isOpen"

    .line 561
    .line 562
    invoke-virtual {v2, v4, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 563
    .line 564
    .line 565
    iget-object v1, v0, Lha/d8;->k:Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 566
    .line 567
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 568
    .line 569
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    const-string v4, "key2"

    .line 574
    .line 575
    invoke-virtual {v2, v4, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 576
    .line 577
    .line 578
    iget-object v1, v0, Lha/d8;->k:Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 579
    .line 580
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyName:Ljava/lang/String;

    .line 581
    .line 582
    const-string v4, "key2_name"

    .line 583
    .line 584
    invoke-virtual {v2, v4, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    new-instance v1, Lz7/o;

    .line 588
    .line 589
    invoke-direct {v1}, Lz7/o;-><init>()V

    .line 590
    .line 591
    .line 592
    const-string v4, "click"

    .line 593
    .line 594
    invoke-virtual {v2, v4, v1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 595
    .line 596
    .line 597
    new-instance v1, Lz7/o;

    .line 598
    .line 599
    invoke-direct {v1}, Lz7/o;-><init>()V

    .line 600
    .line 601
    .line 602
    const-string v9, "doubleClick"

    .line 603
    .line 604
    invoke-virtual {v2, v9, v1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 605
    .line 606
    .line 607
    new-instance v1, Lz7/o;

    .line 608
    .line 609
    invoke-direct {v1}, Lz7/o;-><init>()V

    .line 610
    .line 611
    .line 612
    const-string v10, "longClick"

    .line 613
    .line 614
    invoke-virtual {v2, v10, v1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 615
    .line 616
    .line 617
    new-instance v1, Lz7/o;

    .line 618
    .line 619
    invoke-direct {v1}, Lz7/o;-><init>()V

    .line 620
    .line 621
    .line 622
    const-string v11, "zhClick"

    .line 623
    .line 624
    invoke-virtual {v2, v11, v1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 625
    .line 626
    .line 627
    iget-object v1, v0, Lha/d8;->x:Lx9/t2;

    .line 628
    .line 629
    invoke-virtual {v1}, Lc6/g;->v()Ljava/util/List;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    :cond_17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 638
    .line 639
    .line 640
    move-result v12

    .line 641
    if-eqz v12, :cond_1b

    .line 642
    .line 643
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v12

    .line 647
    check-cast v12, Lz7/s;

    .line 648
    .line 649
    invoke-virtual {v12, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 650
    .line 651
    .line 652
    move-result-object v13

    .line 653
    invoke-virtual {v13}, Lz7/p;->e()I

    .line 654
    .line 655
    .line 656
    move-result v13

    .line 657
    if-nez v13, :cond_18

    .line 658
    .line 659
    invoke-virtual {v2, v4}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 660
    .line 661
    .line 662
    move-result-object v13

    .line 663
    invoke-virtual {v13, v12}, Lz7/o;->k(Lz7/p;)V

    .line 664
    .line 665
    .line 666
    goto :goto_0

    .line 667
    :cond_18
    if-ne v13, v5, :cond_19

    .line 668
    .line 669
    invoke-virtual {v2, v9}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 670
    .line 671
    .line 672
    move-result-object v13

    .line 673
    invoke-virtual {v13, v12}, Lz7/o;->k(Lz7/p;)V

    .line 674
    .line 675
    .line 676
    goto :goto_0

    .line 677
    :cond_19
    if-ne v13, v6, :cond_1a

    .line 678
    .line 679
    invoke-virtual {v2, v10}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 680
    .line 681
    .line 682
    move-result-object v13

    .line 683
    invoke-virtual {v13, v12}, Lz7/o;->k(Lz7/p;)V

    .line 684
    .line 685
    .line 686
    goto :goto_0

    .line 687
    :cond_1a
    if-ne v13, v7, :cond_17

    .line 688
    .line 689
    invoke-virtual {v2, v11}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 690
    .line 691
    .line 692
    move-result-object v13

    .line 693
    invoke-virtual {v13, v12}, Lz7/o;->k(Lz7/p;)V

    .line 694
    .line 695
    .line 696
    goto :goto_0

    .line 697
    :cond_1b
    invoke-interface {v3, v2}, Lha/c8;->a(Lz7/s;)V

    .line 698
    .line 699
    .line 700
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->dismiss()V

    .line 701
    .line 702
    .line 703
    goto :goto_1

    .line 704
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 705
    .line 706
    .line 707
    move-result v1

    .line 708
    const v2, 0x7f0b0366

    .line 709
    .line 710
    .line 711
    if-ne v1, v2, :cond_1d

    .line 712
    .line 713
    invoke-interface {v3}, Lha/c8;->delete()V

    .line 714
    .line 715
    .line 716
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->dismiss()V

    .line 717
    .line 718
    .line 719
    :cond_1d
    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string p1, ")"

    .line 5
    .line 6
    const-string v0, "("

    .line 7
    .line 8
    iget-object v1, p0, Lha/d8;->y:Lz7/s;

    .line 9
    .line 10
    const v2, 0x7f0b0568

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 18
    .line 19
    iput-object v2, p0, Lha/d8;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 20
    .line 21
    const v2, 0x7f0b0569

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/widget/ImageView;

    .line 29
    .line 30
    iput-object v2, p0, Lha/d8;->j:Landroid/widget/ImageView;

    .line 31
    .line 32
    iget-object v2, p0, Lha/d8;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 33
    .line 34
    new-instance v3, Lcom/google/android/material/datepicker/l;

    .line 35
    .line 36
    const/16 v4, 0x1a

    .line 37
    .line 38
    invoke-direct {v3, p0, v4}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    const v2, 0x7f0b0443

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/widget/EditText;

    .line 52
    .line 53
    iput-object v2, p0, Lha/d8;->h:Landroid/widget/EditText;

    .line 54
    .line 55
    const v2, 0x7f0b04cb

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object v2, p0, Lha/d8;->l:Landroid/widget/TextView;

    .line 65
    .line 66
    const v2, 0x7f0b04cc

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Landroid/widget/TextView;

    .line 74
    .line 75
    iput-object v2, p0, Lha/d8;->m:Landroid/widget/TextView;

    .line 76
    .line 77
    const v2, 0x7f0b03b4

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Landroid/widget/TextView;

    .line 85
    .line 86
    iput-object v2, p0, Lha/d8;->n:Landroid/widget/TextView;

    .line 87
    .line 88
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 89
    .line 90
    .line 91
    const v2, 0x7f0b0365

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Landroid/widget/TextView;

    .line 99
    .line 100
    iput-object v2, p0, Lha/d8;->p:Landroid/widget/TextView;

    .line 101
    .line 102
    const v2, 0x7f0b0367

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Landroid/widget/TextView;

    .line 110
    .line 111
    iput-object v2, p0, Lha/d8;->q:Landroid/widget/TextView;

    .line 112
    .line 113
    const v2, 0x7f0b0368

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Landroid/widget/TextView;

    .line 121
    .line 122
    iput-object v2, p0, Lha/d8;->r:Landroid/widget/TextView;

    .line 123
    .line 124
    const v2, 0x7f0b036a

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v2, Landroid/widget/TextView;

    .line 132
    .line 133
    iput-object v2, p0, Lha/d8;->s:Landroid/widget/TextView;

    .line 134
    .line 135
    const v2, 0x7f0b0369

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    check-cast v2, Landroid/widget/TextView;

    .line 143
    .line 144
    iput-object v2, p0, Lha/d8;->t:Landroid/widget/TextView;

    .line 145
    .line 146
    const v2, 0x7f0b0366

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Landroid/widget/TextView;

    .line 154
    .line 155
    iput-object v2, p0, Lha/d8;->v:Landroid/widget/TextView;

    .line 156
    .line 157
    iget-object v2, p0, Lha/d8;->n:Landroid/widget/TextView;

    .line 158
    .line 159
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    .line 161
    .line 162
    iget-object v2, p0, Lha/d8;->p:Landroid/widget/TextView;

    .line 163
    .line 164
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    .line 167
    iget-object v2, p0, Lha/d8;->q:Landroid/widget/TextView;

    .line 168
    .line 169
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    .line 172
    iget-object v2, p0, Lha/d8;->r:Landroid/widget/TextView;

    .line 173
    .line 174
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    .line 176
    .line 177
    iget-object v2, p0, Lha/d8;->s:Landroid/widget/TextView;

    .line 178
    .line 179
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    iget-object v2, p0, Lha/d8;->t:Landroid/widget/TextView;

    .line 183
    .line 184
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    .line 186
    .line 187
    iget-object v2, p0, Lha/d8;->v:Landroid/widget/TextView;

    .line 188
    .line 189
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    .line 191
    .line 192
    const v2, 0x7f0b04f1

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    check-cast v2, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 200
    .line 201
    iput-object v2, p0, Lha/d8;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 202
    .line 203
    new-instance v3, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 204
    .line 205
    iget-object v4, p0, Lha/a4;->b:Landroid/content/Context;

    .line 206
    .line 207
    const/4 v5, 0x1

    .line 208
    const/4 v6, 0x0

    .line 209
    invoke-direct {v3, v4, v5, v6}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 213
    .line 214
    .line 215
    new-instance v2, Lx9/t2;

    .line 216
    .line 217
    invoke-direct {v2}, Lx9/t2;-><init>()V

    .line 218
    .line 219
    .line 220
    iput-object v2, p0, Lha/d8;->x:Lx9/t2;

    .line 221
    .line 222
    iget-object v3, p0, Lha/d8;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 223
    .line 224
    invoke-virtual {v3, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 225
    .line 226
    .line 227
    new-instance v2, Ld6/a;

    .line 228
    .line 229
    invoke-direct {v2}, Ld6/a;-><init>()V

    .line 230
    .line 231
    .line 232
    const/4 v3, 0x3

    .line 233
    iput v3, v2, Ld6/a;->h:I

    .line 234
    .line 235
    iput-boolean v6, v2, Ld6/a;->g:Z

    .line 236
    .line 237
    iget-object v3, p0, Lha/d8;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 238
    .line 239
    invoke-virtual {v2, v3}, Ld6/a;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 240
    .line 241
    .line 242
    iget-object v3, p0, Lha/d8;->x:Lx9/t2;

    .line 243
    .line 244
    invoke-virtual {v2, v3}, Ld6/a;->g(Le6/a;)V

    .line 245
    .line 246
    .line 247
    iget-object v2, p0, Lha/d8;->x:Lx9/t2;

    .line 248
    .line 249
    new-instance v3, Lha/a8;

    .line 250
    .line 251
    invoke-direct {v3, p0}, Lha/a8;-><init>(Lha/d8;)V

    .line 252
    .line 253
    .line 254
    iput-object v3, v2, Lc6/g;->e:Lc6/e;

    .line 255
    .line 256
    :try_start_0
    const-string v2, "isOpen"

    .line 257
    .line 258
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    iput-boolean v2, p0, Lha/d8;->g:Z

    .line 267
    .line 268
    iget-object v3, p0, Lha/d8;->j:Landroid/widget/ImageView;

    .line 269
    .line 270
    if-eqz v2, :cond_0

    .line 271
    .line 272
    const v2, 0x7f080234

    .line 273
    .line 274
    .line 275
    goto :goto_0

    .line 276
    :cond_0
    const v2, 0x7f080237

    .line 277
    .line 278
    .line 279
    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    .line 281
    .line 282
    iget-object v2, p0, Lha/d8;->h:Landroid/widget/EditText;

    .line 283
    .line 284
    const-string v3, "name"

    .line 285
    .line 286
    invoke-virtual {v1, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    .line 296
    .line 297
    iget-object v2, p0, Lha/d8;->l:Landroid/widget/TextView;

    .line 298
    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    const-string v4, "key1_name"

    .line 305
    .line 306
    invoke-virtual {v1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v4, "key1"

    .line 321
    .line 322
    invoke-virtual {v1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    invoke-virtual {v4}, Lz7/p;->e()I

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    .line 342
    .line 343
    new-instance v2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 344
    .line 345
    const-string v3, "key2"

    .line 346
    .line 347
    invoke-virtual {v1, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 352
    .line 353
    .line 354
    move-result v3

    .line 355
    const-string v4, "key2_name"

    .line 356
    .line 357
    invoke-virtual {v1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-direct {v2, v3, v1}, Lcom/yunpan/appmanage/bean/KeyCodeBean;-><init>(ILjava/lang/String;)V

    .line 366
    .line 367
    .line 368
    iput-object v2, p0, Lha/d8;->k:Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 369
    .line 370
    iget v1, v2, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 371
    .line 372
    const/4 v2, -0x1

    .line 373
    if-eq v1, v2, :cond_1

    .line 374
    .line 375
    iget-object v1, p0, Lha/d8;->m:Landroid/widget/TextView;

    .line 376
    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .line 381
    .line 382
    iget-object v3, p0, Lha/d8;->k:Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 383
    .line 384
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyName:Ljava/lang/String;

    .line 385
    .line 386
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    iget-object v0, p0, Lha/d8;->k:Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 393
    .line 394
    iget v0, v0, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 395
    .line 396
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    .line 408
    .line 409
    goto :goto_1

    .line 410
    :catch_0
    move-exception p1

    .line 411
    goto :goto_2

    .line 412
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lha/d8;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .line 414
    .line 415
    goto :goto_3

    .line 416
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    const-string v1, ""

    .line 419
    .line 420
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-static {p1, v0}, Lg/b;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 424
    .line 425
    .line 426
    :goto_3
    return-void
.end method

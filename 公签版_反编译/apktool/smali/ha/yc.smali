.class public final Lha/yc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lha/ad;


# direct methods
.method public constructor <init>(Lha/ad;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/yc;->c:Lha/ad;

    .line 2
    .line 3
    iput-object p2, p0, Lha/yc;->a:Landroid/widget/TextView;

    .line 4
    .line 5
    iput-object p3, p0, Lha/yc;->b:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lha/yc;->c:Lha/ad;

    .line 2
    .line 3
    iget-object v0, p1, Lha/ad;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v0, p1, Lha/ad;->b:Z

    .line 13
    .line 14
    iget-object v1, p0, Lha/yc;->a:Landroid/widget/TextView;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const-string v3, ""

    .line 18
    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    iget-object v0, p1, Lha/ad;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v4, 0x4

    .line 28
    if-ge v0, v4, :cond_1

    .line 29
    .line 30
    const-string p1, "\u5bc6\u7801\u9700\u81f3\u5c11\u56db\u4f4d"

    .line 31
    .line 32
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v0, p1, Lha/ad;->d:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v4, p0, Lha/yc;->b:Landroid/widget/TextView;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p1, Lha/ad;->c:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v0, p1, Lha/ad;->d:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v3, p1, Lha/ad;->c:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    const-string p1, "\u8bf7\u4e8c\u6b21\u8f93\u5165\u5bc6\u7801\u786e\u8ba4"

    .line 56
    .line 57
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p1, Lha/ad;->d:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v5, p1, Lha/ad;->c:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    const-string v0, "\u8bbe\u7f6e\u6210\u529f"

    .line 72
    .line 73
    invoke-static {v0, v2}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 74
    .line 75
    .line 76
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 77
    .line 78
    iget-object v1, p1, Lha/ad;->c:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/util/w;->B(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lha/ad;->a()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    const-string v0, "\u4e0e\u7b2c\u4e00\u6b21\u8f93\u5165\u7684\u5bc6\u7801\u4e0d\u4e00\u81f4\uff0c\u8bf7\u91cd\u65b0\u8bbe\u7f6e"

    .line 88
    .line 89
    const/4 v2, 0x0

    .line 90
    invoke-static {v0, v2}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 91
    .line 92
    .line 93
    iput-object v3, p1, Lha/ad;->d:Ljava/lang/String;

    .line 94
    .line 95
    iput-object v3, p1, Lha/ad;->c:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    const-string p1, "\u8bf7\u8bbe\u7f6e\u7ba1\u5bb6\u542f\u52a8\u5bc6\u7801"

    .line 101
    .line 102
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 107
    .line 108
    iget-object v4, v0, Lcom/yunpan/appmanage/util/w;->j:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v5, p1, Lha/ad;->c:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_5

    .line 117
    .line 118
    invoke-virtual {p1}, Lha/ad;->a()V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    iget-object v4, p1, Lha/ad;->c:Ljava/lang/String;

    .line 123
    .line 124
    const-string v5, "\u53f3\u53f3\u53f3\u53f3\u53f3\u53f3\u53f3\u53f3\u53f3\u53f3\u53f3\u53f3\u53f3\u53f3\u53f3\u53f3\u53f3\u53f3\u53f3\u53f3"

    .line 125
    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_6

    .line 131
    .line 132
    const-string v1, "\u5df2\u6e05\u9664\u5bc6\u7801"

    .line 133
    .line 134
    invoke-static {v1, v2}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v3}, Lcom/yunpan/appmanage/util/w;->B(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Lha/ad;->a()V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_6
    iput-object v3, p1, Lha/ad;->c:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    const-string p1, "\u5bc6\u7801\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    .line 150
    .line 151
    invoke-static {p1, v2}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 152
    .line 153
    .line 154
    :goto_0
    return-void
.end method

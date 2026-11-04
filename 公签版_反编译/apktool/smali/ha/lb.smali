.class public final synthetic Lha/lb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/nb;


# direct methods
.method public synthetic constructor <init>(Lha/nb;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/lb;->a:I

    iput-object p1, p0, Lha/lb;->b:Lha/nb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object p1, p0, Lha/lb;->b:Lha/nb;

    .line 2
    .line 3
    iget v0, p0, Lha/lb;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lha/z6;

    .line 12
    .line 13
    new-instance v9, Lh5/m;

    .line 14
    .line 15
    const/16 v1, 0xd

    .line 16
    .line 17
    invoke-direct {v9, v1, p1}, Lh5/m;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const-string v5, ""

    .line 21
    .line 22
    const-string v6, "\u8bf7\u8f93\u5165\u6587\u4ef6\u5939\u540d\u79f0"

    .line 23
    .line 24
    iget-object v2, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 25
    .line 26
    iget-object v3, p1, Lha/a4;->b:Landroid/content/Context;

    .line 27
    .line 28
    const-string v4, "\u65b0\u5efa\u6587\u4ef6\u5939"

    .line 29
    .line 30
    const-string v7, "\u786e\u5b9a"

    .line 31
    .line 32
    const-string v8, "\u53d6\u6d88"

    .line 33
    .line 34
    move-object v1, v0

    .line 35
    invoke-direct/range {v1 .. v9}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/y6;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_0
    iget-object v0, p1, Lha/nb;->i:Lx9/g0;

    .line 43
    .line 44
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-lez v1, :cond_3

    .line 49
    .line 50
    iget-object v1, p1, Lha/nb;->v:Landroid/widget/EditText;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    const-string p1, "\u8bf7\u8f93\u5165\u6587\u4ef6\u540d"

    .line 67
    .line 68
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const/4 v1, 0x1

    .line 73
    invoke-static {v0, v1}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Lx9/w3;

    .line 78
    .line 79
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->d(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_1

    .line 86
    .line 87
    const-string p1, "\u6b64\u76ee\u5f55\u65e0\u6743\u9650\u5199\u5165\u6587\u4ef6"

    .line 88
    .line 89
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v1}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lx9/w3;

    .line 103
    .line 104
    iget-object v0, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object v0, p1, Lha/nb;->v:Landroid/widget/EditText;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_2

    .line 136
    .line 137
    const-string p1, "\u5df2\u5b58\u5728\u76f8\u540c\u6587\u4ef6\u540d\u7684\u6587\u4ef6"

    .line 138
    .line 139
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_2
    iget-object v1, p1, Lha/nb;->t:Lua/d1;

    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    sget v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->c1:I

    .line 149
    .line 150
    iget-object v1, v1, Lua/d1;->b:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    new-instance v2, Ljava/io/File;

    .line 156
    .line 157
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iput-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->R:Landroid/net/Uri;

    .line 165
    .line 166
    const/4 v0, 0x0

    .line 167
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->B(Z)V

    .line 168
    .line 169
    .line 170
    :cond_3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 171
    .line 172
    .line 173
    :goto_0
    return-void

    .line 174
    :pswitch_1
    invoke-virtual {p1}, Lha/nb;->a()V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

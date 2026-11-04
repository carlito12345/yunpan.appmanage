.class public final synthetic Lha/x8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/ea;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/a9;

.field public final synthetic c:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public final synthetic d:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lha/a9;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p4, p0, Lha/x8;->a:I

    iput-object p1, p0, Lha/x8;->b:Lha/a9;

    iput-object p2, p0, Lha/x8;->c:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    iput-object p3, p0, Lha/x8;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 6

    .line 1
    iget v0, p0, Lha/x8;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/x8;->b:Lha/a9;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lha/x8;->c:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 17
    .line 18
    iget-object v3, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v3, "\uff08"

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lha/x8;->d:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v4, "\uff09"

    .line 40
    .line 41
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lha/a9;->b(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v4, Lz7/s;

    .line 52
    .line 53
    invoke-direct {v4}, Lz7/s;-><init>()V

    .line 54
    .line 55
    .line 56
    iget v2, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 57
    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const-string v5, "type"

    .line 63
    .line 64
    invoke-virtual {v4, v5, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Ljava/lang/String;

    .line 72
    .line 73
    const-string v2, "str1"

    .line 74
    .line 75
    invoke-virtual {v4, v2, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, v0, Lha/a9;->s:Lz7/s;

    .line 79
    .line 80
    const-string v0, "name"

    .line 81
    .line 82
    invoke-virtual {p1, v0, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v0, "event"

    .line 86
    .line 87
    invoke-virtual {p1, v0, v4}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p0, Lha/x8;->b:Lha/a9;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Lha/x8;->c:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 102
    .line 103
    iget-object v3, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v3, "\uff08"

    .line 109
    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v3, p0, Lha/x8;->d:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v4, "\uff09"

    .line 125
    .line 126
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Lha/a9;->b(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance v4, Lz7/s;

    .line 137
    .line 138
    invoke-direct {v4}, Lz7/s;-><init>()V

    .line 139
    .line 140
    .line 141
    iget v2, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 142
    .line 143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    const-string v5, "type"

    .line 148
    .line 149
    invoke-virtual {v4, v5, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 150
    .line 151
    .line 152
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Ljava/lang/String;

    .line 157
    .line 158
    const-string v2, "str1"

    .line 159
    .line 160
    invoke-virtual {v4, v2, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, v0, Lha/a9;->s:Lz7/s;

    .line 164
    .line 165
    const-string v0, "name"

    .line 166
    .line 167
    invoke-virtual {p1, v0, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const-string v0, "event"

    .line 171
    .line 172
    invoke-virtual {p1, v0, v4}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    nop

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

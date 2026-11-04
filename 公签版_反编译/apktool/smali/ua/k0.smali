.class public final Lua/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lua/k0;->a:I

    iput-object p2, p0, Lua/k0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget v0, p0, Lua/k0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 7
    .line 8
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 9
    .line 10
    iget-boolean v0, p1, Lcom/google/android/material/button/MaterialButton;->p:Z

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-boolean v1, p2, Lcom/google/android/material/button/MaterialButton;->p:Z

    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2}, Landroid/view/View;->isPressed()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lua/k0;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    :goto_0
    return v0

    .line 77
    :pswitch_0
    check-cast p1, Lvc/a;

    .line 78
    .line 79
    check-cast p2, Lvc/a;

    .line 80
    .line 81
    iget-object v0, p0, Lua/k0;->b:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Lvd/d0;

    .line 84
    .line 85
    iget-object v0, v0, Lvd/d0;->d:Lj$/util/concurrent/ConcurrentHashMap;

    .line 86
    .line 87
    invoke-interface {p1}, Lvc/a;->b()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Ljava/lang/Integer;

    .line 96
    .line 97
    invoke-interface {p2}, Lvc/a;->b()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Ljava/lang/Integer;

    .line 106
    .line 107
    const/4 v0, 0x0

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-nez p1, :cond_2

    .line 113
    .line 114
    move-object p1, v1

    .line 115
    :cond_2
    if-nez p2, :cond_3

    .line 116
    .line 117
    move-object p2, v1

    .line 118
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    if-ne p1, p2, :cond_4

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_4
    if-ge p1, p2, :cond_5

    .line 130
    .line 131
    const/4 v0, -0x1

    .line 132
    goto :goto_1

    .line 133
    :cond_5
    const/4 v0, 0x1

    .line 134
    :goto_1
    return v0

    .line 135
    :pswitch_1
    check-cast p1, Lcom/yunpan/appmanage/db/AppBean;

    .line 136
    .line 137
    check-cast p2, Lcom/yunpan/appmanage/db/AppBean;

    .line 138
    .line 139
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 140
    .line 141
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->i0:I

    .line 142
    .line 143
    const/4 v1, 0x1

    .line 144
    iget-object v2, p0, Lua/k0;->b:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v2, Ljava/text/Collator;

    .line 147
    .line 148
    if-ne v0, v1, :cond_6

    .line 149
    .line 150
    iget-object p1, p1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 151
    .line 152
    iget-object p2, p2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v2, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    goto :goto_2

    .line 159
    :cond_6
    const/4 v1, 0x2

    .line 160
    if-ne v0, v1, :cond_7

    .line 161
    .line 162
    iget-object p2, p2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 163
    .line 164
    iget-object p1, p1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v2, p2, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    goto :goto_2

    .line 171
    :cond_7
    iget-object p1, p1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 172
    .line 173
    iget-object p2, p2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v2, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    :goto_2
    return p1

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Lcom/yunpan/appmanage/carsdk/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/carsdk/x;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/carsdk/x;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/yunpan/appmanage/carsdk/t;->a:I

    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/t;->b:Lcom/yunpan/appmanage/carsdk/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/carsdk/t;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-class v1, Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/t;->b:Lcom/yunpan/appmanage/carsdk/x;

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const-string v0, "body"

    .line 17
    .line 18
    invoke-static {v2, p1, p2, p3, v0}, Lcom/yunpan/appmanage/carsdk/x;->c(Lcom/yunpan/appmanage/carsdk/x;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :try_start_0
    const-string p1, "onChangeEvent"

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    if-eqz p3, :cond_1

    .line 36
    .line 37
    array-length p1, p3

    .line 38
    if-lez p1, :cond_1

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    aget-object p1, p3, p1

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-static {v2, p1}, Lcom/yunpan/appmanage/carsdk/x;->a(Lcom/yunpan/appmanage/carsdk/x;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const-string p1, "onErrorEvent"

    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :goto_0
    const-string p2, "bodyCallback"

    .line 68
    .line 69
    invoke-static {v2, p2, p1}, Lcom/yunpan/appmanage/carsdk/x;->d(Lcom/yunpan/appmanage/carsdk/x;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 73
    :goto_2
    return-object p1

    .line 74
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-class v1, Ljava/lang/Object;

    .line 79
    .line 80
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/t;->b:Lcom/yunpan/appmanage/carsdk/x;

    .line 81
    .line 82
    if-ne v0, v1, :cond_3

    .line 83
    .line 84
    const-string v0, "hardKey"

    .line 85
    .line 86
    invoke-static {v2, p1, p2, p3, v0}, Lcom/yunpan/appmanage/carsdk/x;->c(Lcom/yunpan/appmanage/carsdk/x;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    goto :goto_5

    .line 91
    :cond_3
    :try_start_1
    const-string p1, "onChangeEvent"

    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_4

    .line 102
    .line 103
    if-eqz p3, :cond_4

    .line 104
    .line 105
    array-length p1, p3

    .line 106
    if-lez p1, :cond_4

    .line 107
    .line 108
    const/4 p1, 0x0

    .line 109
    aget-object p1, p3, p1

    .line 110
    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    invoke-static {v2, p1}, Lcom/yunpan/appmanage/carsdk/x;->b(Lcom/yunpan/appmanage/carsdk/x;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    goto :goto_4

    .line 117
    :catchall_1
    move-exception p1

    .line 118
    goto :goto_3

    .line 119
    :cond_4
    const-string p1, "onErrorEvent"

    .line 120
    .line 121
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_5

    .line 130
    .line 131
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :goto_3
    const-string p2, "hardKeyCallback"

    .line 136
    .line 137
    invoke-static {v2, p2, p1}, Lcom/yunpan/appmanage/carsdk/x;->d(Lcom/yunpan/appmanage/carsdk/x;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    :cond_5
    :goto_4
    const/4 p1, 0x0

    .line 141
    :goto_5
    return-object p1

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

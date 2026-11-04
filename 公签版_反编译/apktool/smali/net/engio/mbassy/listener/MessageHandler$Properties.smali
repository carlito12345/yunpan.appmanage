.class public final Lnet/engio/mbassy/listener/MessageHandler$Properties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/engio/mbassy/listener/MessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Properties"
.end annotation


# static fields
.field public static final AcceptSubtypes:Ljava/lang/String; = "subtypes"

.field public static final Condition:Ljava/lang/String; = "condition"

.field public static final Enveloped:Ljava/lang/String; = "envelope"

.field public static final Filter:Ljava/lang/String; = "filter"

.field public static final HandledMessages:Ljava/lang/String; = "messages"

.field public static final HandlerMethod:Ljava/lang/String; = "handler"

.field public static final Invocation:Ljava/lang/String; = "invocation"

.field public static final InvocationMode:Ljava/lang/String; = "invocationMode"

.field public static final IsSynchronized:Ljava/lang/String; = "synchronized"

.field public static final Listener:Ljava/lang/String; = "listener"

.field public static final Priority:Ljava/lang/String; = "priority"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final Create(Ljava/lang/reflect/Method;Lnet/engio/mbassy/listener/Handler;Lnet/engio/mbassy/listener/Enveloped;[Lnet/engio/mbassy/listener/IMessageFilter;Lnet/engio/mbassy/listener/MessageListener;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Lnet/engio/mbassy/listener/Handler;",
            "Lnet/engio/mbassy/listener/Enveloped;",
            "[",
            "Lnet/engio/mbassy/listener/IMessageFilter;",
            "Lnet/engio/mbassy/listener/MessageListener;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_7

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    new-array p3, v0, [Lnet/engio/mbassy/listener/IMessageFilter;

    .line 7
    .line 8
    :cond_0
    if-eqz p2, :cond_1

    .line 9
    .line 10
    invoke-interface {p2}, Lnet/engio/mbassy/listener/Enveloped;->messages()[Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    const/4 v2, 0x1

    .line 20
    invoke-virtual {p0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v4, "handler"

    .line 29
    .line 30
    invoke-virtual {v3, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Lnet/engio/mbassy/listener/Handler;->condition()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-lez v4, :cond_4

    .line 42
    .line 43
    invoke-static {}, Lnet/engio/mbassy/dispatch/el/ElFilter;->isELAvailable()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_3

    .line 48
    .line 49
    array-length v4, p3

    .line 50
    add-int/2addr v4, v2

    .line 51
    new-array v4, v4, [Lnet/engio/mbassy/listener/IMessageFilter;

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    :goto_1
    array-length v6, p3

    .line 55
    if-ge v5, v6, :cond_2

    .line 56
    .line 57
    aget-object v6, p3, v5

    .line 58
    .line 59
    aput-object v6, v4, v5

    .line 60
    .line 61
    add-int/lit8 v5, v5, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    array-length p3, p3

    .line 65
    new-instance v5, Lnet/engio/mbassy/dispatch/el/ElFilter;

    .line 66
    .line 67
    invoke-direct {v5}, Lnet/engio/mbassy/dispatch/el/ElFilter;-><init>()V

    .line 68
    .line 69
    .line 70
    aput-object v5, v4, p3

    .line 71
    .line 72
    move-object p3, v4

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    const-string p1, "A handler uses an EL filter but no EL implementation is available."

    .line 77
    .line 78
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :cond_4
    :goto_2
    const-string v4, "filter"

    .line 83
    .line 84
    invoke-virtual {v3, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    invoke-interface {p1}, Lnet/engio/mbassy/listener/Handler;->condition()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    invoke-static {p3}, Lnet/engio/mbassy/listener/MessageHandler$Properties;->cleanEL(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    const-string v4, "condition"

    .line 96
    .line 97
    invoke-virtual {v3, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    invoke-interface {p1}, Lnet/engio/mbassy/listener/Handler;->priority()I

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    const-string v4, "priority"

    .line 109
    .line 110
    invoke-virtual {v3, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    const-string p3, "invocation"

    .line 114
    .line 115
    invoke-interface {p1}, Lnet/engio/mbassy/listener/Handler;->invocation()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v3, p3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    const-string p3, "invocationMode"

    .line 123
    .line 124
    invoke-interface {p1}, Lnet/engio/mbassy/listener/Handler;->delivery()Lnet/engio/mbassy/listener/Invoke;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v3, p3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    if-eqz p2, :cond_5

    .line 132
    .line 133
    const/4 p2, 0x1

    .line 134
    goto :goto_3

    .line 135
    :cond_5
    const/4 p2, 0x0

    .line 136
    :goto_3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    const-string p3, "envelope"

    .line 141
    .line 142
    invoke-virtual {v3, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    invoke-interface {p1}, Lnet/engio/mbassy/listener/Handler;->rejectSubtypes()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    xor-int/2addr p1, v2

    .line 150
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    const-string p2, "subtypes"

    .line 155
    .line 156
    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    const-string p1, "listener"

    .line 160
    .line 161
    invoke-virtual {v3, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    const-class p1, Lnet/engio/mbassy/listener/Synchronized;

    .line 165
    .line 166
    invoke-static {p0, p1}, Lnet/engio/mbassy/common/ReflectionUtils;->getAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    if-eqz p0, :cond_6

    .line 171
    .line 172
    const/4 v0, 0x1

    .line 173
    :cond_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    const-string p1, "synchronized"

    .line 178
    .line 179
    invoke-virtual {v3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    const-string p0, "messages"

    .line 183
    .line 184
    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    return-object v3

    .line 188
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 189
    .line 190
    const-string p1, "The message handler configuration may not be null"

    .line 191
    .line 192
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    goto :goto_5

    .line 196
    :goto_4
    throw p0

    .line 197
    :goto_5
    goto :goto_4
.end method

.method private static cleanEL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "${"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v2, "#{"

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const-string v0, "}"

    .line 26
    .line 27
    invoke-static {v1, p0, v0}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :cond_0
    return-object p0
.end method

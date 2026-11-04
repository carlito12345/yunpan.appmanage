.class public final Lt0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lt0/j;


# instance fields
.field public final a:Lt0/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/util/Locale;

    .line 3
    .line 4
    invoke-static {v0}, Lt0/j;->a([Ljava/util/Locale;)Lt0/j;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lt0/j;->b:Lt0/j;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lt0/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt0/j;->a:Lt0/l;

    .line 5
    .line 6
    return-void
.end method

.method public static varargs a([Ljava/util/Locale;)Lt0/j;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lt0/i;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Lt0/j;

    .line 12
    .line 13
    new-instance v1, Lt0/m;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lt0/m;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lt0/j;-><init>(Lt0/l;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    new-instance v0, Lt0/j;

    .line 23
    .line 24
    new-instance v1, Lt0/k;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lt0/k;-><init>([Ljava/util/Locale;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lt0/j;-><init>(Lt0/l;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6

    .line 1
    const-string v0, "-"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    array-length v1, v0

    .line 18
    if-le v1, v3, :cond_0

    .line 19
    .line 20
    new-instance p0, Ljava/util/Locale;

    .line 21
    .line 22
    aget-object v1, v0, v4

    .line 23
    .line 24
    aget-object v2, v0, v5

    .line 25
    .line 26
    aget-object v0, v0, v3

    .line 27
    .line 28
    invoke-direct {p0, v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_0
    array-length v1, v0

    .line 33
    if-le v1, v5, :cond_1

    .line 34
    .line 35
    new-instance p0, Ljava/util/Locale;

    .line 36
    .line 37
    aget-object v1, v0, v4

    .line 38
    .line 39
    aget-object v0, v0, v5

    .line 40
    .line 41
    invoke-direct {p0, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_1
    array-length v1, v0

    .line 46
    if-ne v1, v5, :cond_5

    .line 47
    .line 48
    new-instance p0, Ljava/util/Locale;

    .line 49
    .line 50
    aget-object v0, v0, v4

    .line 51
    .line 52
    invoke-direct {p0, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_2
    const-string v0, "_"

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_6

    .line 63
    .line 64
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    array-length v1, v0

    .line 69
    if-le v1, v3, :cond_3

    .line 70
    .line 71
    new-instance p0, Ljava/util/Locale;

    .line 72
    .line 73
    aget-object v1, v0, v4

    .line 74
    .line 75
    aget-object v2, v0, v5

    .line 76
    .line 77
    aget-object v0, v0, v3

    .line 78
    .line 79
    invoke-direct {p0, v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_3
    array-length v1, v0

    .line 84
    if-le v1, v5, :cond_4

    .line 85
    .line 86
    new-instance p0, Ljava/util/Locale;

    .line 87
    .line 88
    aget-object v1, v0, v4

    .line 89
    .line 90
    aget-object v0, v0, v5

    .line 91
    .line 92
    invoke-direct {p0, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-object p0

    .line 96
    :cond_4
    array-length v1, v0

    .line 97
    if-ne v1, v5, :cond_5

    .line 98
    .line 99
    new-instance p0, Ljava/util/Locale;

    .line 100
    .line 101
    aget-object v0, v0, v4

    .line 102
    .line 103
    invoke-direct {p0, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-object p0

    .line 107
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    const-string v1, "Can not parse language tag: ["

    .line 110
    .line 111
    const-string v2, "]"

    .line 112
    .line 113
    invoke-static {v1, p0, v2}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :cond_6
    new-instance v0, Ljava/util/Locale;

    .line 122
    .line 123
    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lt0/j;
    .locals 5

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    const-string v0, ","

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    array-length v0, p0

    .line 18
    new-array v1, v0, [Ljava/util/Locale;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v0, :cond_2

    .line 22
    .line 23
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v4, 0x15

    .line 26
    .line 27
    if-lt v3, v4, :cond_1

    .line 28
    .line 29
    aget-object v3, p0, v2

    .line 30
    .line 31
    invoke-static {v3}, Lt0/h;->a(Ljava/lang/String;)Ljava/util/Locale;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    aget-object v3, p0, v2

    .line 37
    .line 38
    invoke-static {v3}, Lt0/j;->b(Ljava/lang/String;)Ljava/util/Locale;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    :goto_1
    aput-object v3, v1, v2

    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-static {v1}, Lt0/j;->a([Ljava/util/Locale;)Lt0/j;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_3
    :goto_2
    sget-object p0, Lt0/j;->b:Lt0/j;

    .line 53
    .line 54
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lt0/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lt0/j;

    .line 6
    .line 7
    iget-object p1, p1, Lt0/j;->a:Lt0/l;

    .line 8
    .line 9
    iget-object v0, p0, Lt0/j;->a:Lt0/l;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lt0/j;->a:Lt0/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lt0/j;->a:Lt0/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

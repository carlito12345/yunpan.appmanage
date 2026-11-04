.class public final Lrf/a;
.super Lrf/c;
.source "SourceFile"


# instance fields
.field public final c:[Lrf/c;


# direct methods
.method public varargs constructor <init>([Lrf/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrf/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lrf/a;->c:[Lrf/c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILjava/io/StringWriter;Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lrf/a;->c:[Lrf/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    const/4 v3, 0x6

    .line 6
    if-ge v2, v3, :cond_1

    .line 7
    .line 8
    aget-object v3, v0, v2

    .line 9
    .line 10
    invoke-virtual {v3, p1, p2, p3}, Lrf/c;->a(ILjava/io/StringWriter;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    return v3

    .line 17
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return v1
.end method

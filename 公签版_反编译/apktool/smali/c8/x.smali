.class public final Lc8/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lc8/x;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lc8/x;

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v2, v1}, Lc8/x;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lc8/x;->c:Lc8/x;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lc8/x;->a:Ljava/util/Map;

    .line 5
    .line 6
    iput-object p1, p0, Lc8/x;->b:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

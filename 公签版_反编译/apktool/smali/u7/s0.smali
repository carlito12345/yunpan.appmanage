.class public final Lu7/s0;
.super Lu7/q;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lu7/w0;


# direct methods
.method public constructor <init>(Lu7/w0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu7/s0;->a:Lu7/w0;

    .line 2
    .line 3
    invoke-direct {p0}, Lu7/q;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d()Ljava/util/Map;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    .line 2
    .line 3
    iget-object v1, p0, Lu7/s0;->a:Lu7/w0;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

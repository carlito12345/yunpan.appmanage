.class public final Lq4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lq4/j;

.field public b:Z

.field public c:I

.field public d:Lq4/j;

.field public e:Ljava/lang/String;

.field public f:Lq4/k;

.field public g:Lu4/c;

.field public final h:Ljava/util/LinkedHashMap;

.field public final i:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lq4/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lq4/e;->h:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lq4/e;->i:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    iput-object p1, p0, Lq4/e;->a:Lq4/j;

    .line 19
    .line 20
    return-void
.end method

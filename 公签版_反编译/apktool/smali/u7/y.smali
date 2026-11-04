.class public abstract Lu7/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu7/w;

.field public static final b:Lu7/x;

.field public static final c:Lu7/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu7/w;

    .line 2
    .line 3
    invoke-direct {v0}, Lu7/w;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lu7/y;->a:Lu7/w;

    .line 7
    .line 8
    new-instance v0, Lu7/x;

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-direct {v0, v1}, Lu7/x;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lu7/y;->b:Lu7/x;

    .line 15
    .line 16
    new-instance v0, Lu7/x;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {v0, v1}, Lu7/x;-><init>(I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lu7/y;->c:Lu7/x;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract a(II)Lu7/y;
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu7/y;
.end method

.method public abstract c(ZZ)Lu7/y;
.end method

.method public abstract d(ZZ)Lu7/y;
.end method

.method public abstract e()I
.end method

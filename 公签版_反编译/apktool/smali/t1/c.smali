.class public final Lt1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lu7/p;

.field public static final c:Lt1/c;


# instance fields
.field public final a:Lu7/y0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lu7/w0;->a:Lu7/w0;

    .line 2
    .line 3
    new-instance v1, Lha/jd;

    .line 4
    .line 5
    const/16 v2, 0x14

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lha/jd;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v2, Lu7/p;

    .line 14
    .line 15
    invoke-direct {v2, v1, v0}, Lu7/p;-><init>(Lt7/d;Lu7/x0;)V

    .line 16
    .line 17
    .line 18
    sput-object v2, Lt1/c;->b:Lu7/p;

    .line 19
    .line 20
    new-instance v0, Lt1/c;

    .line 21
    .line 22
    sget-object v1, Lu7/g0;->b:Lu7/e0;

    .line 23
    .line 24
    sget-object v1, Lu7/y0;->e:Lu7/y0;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lt1/c;-><init>(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lt1/c;->c:Lt1/c;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-static {v0}, Lu1/f0;->B(I)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-static {v0}, Lu1/f0;->B(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lt1/c;->b:Lu7/p;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lu7/g0;->t(Lu7/x0;Ljava/util/List;)Lu7/y0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lt1/c;->a:Lu7/y0;

    .line 11
    .line 12
    return-void
.end method

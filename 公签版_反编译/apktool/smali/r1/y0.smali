.class public final Lr1/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr1/y0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lr1/y0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lr1/y0;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lr1/y0;->a:Lr1/y0;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lu7/g0;->b:Lu7/e0;

    .line 4
    sget-object v0, Lu7/y0;->e:Lu7/y0;

    return-void
.end method

.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public interface abstract Lcom/android/apksig/util/RunnablesExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MULTI_THREADED:Lcom/android/apksig/util/RunnablesExecutor;

.field public static final SINGLE_THREADED:Lcom/android/apksig/util/RunnablesExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La2/u0;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, v1}, La2/u0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/apksig/util/RunnablesExecutor;->SINGLE_THREADED:Lcom/android/apksig/util/RunnablesExecutor;

    .line 9
    .line 10
    new-instance v0, Lcom/android/apksig/util/RunnablesExecutor$1;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/android/apksig/util/RunnablesExecutor$1;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/apksig/util/RunnablesExecutor;->MULTI_THREADED:Lcom/android/apksig/util/RunnablesExecutor;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public abstract execute(Lcom/android/apksig/util/RunnablesProvider;)V
.end method

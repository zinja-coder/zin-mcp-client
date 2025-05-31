.class public abstract Lcom/badlogic/gdx/utils/Timer$Task;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Task"
.end annotation


# instance fields
.field executeTimeMillis:J

.field intervalMillis:J

.field repeatCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 184
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    .line 185
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    .line 186
    return-void
.end method

.method public getExecuteTimeMillis()J
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    return-wide v0
.end method

.method public isScheduled()Z
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract run()V
.end method

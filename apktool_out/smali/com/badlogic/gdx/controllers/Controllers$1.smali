.class final Lcom/badlogic/gdx/controllers/Controllers$1;
.super Ljava/lang/Object;
.source "Controllers.java"

# interfaces
.implements Lcom/badlogic/gdx/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/controllers/Controllers;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Lcom/badlogic/gdx/Application;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/Application;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/badlogic/gdx/controllers/Controllers$1;->val$app:Lcom/badlogic/gdx/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    .line 118
    sget-object v0, Lcom/badlogic/gdx/controllers/Controllers;->managers:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p0, Lcom/badlogic/gdx/controllers/Controllers$1;->val$app:Lcom/badlogic/gdx/Application;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "Controllers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removed manager for application, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/controllers/Controllers;->managers:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v3, v3, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " managers active"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.class Lcom/badlogic/gdx/backends/android/AndroidApplication$2;
.super Ljava/lang/Object;
.source "AndroidApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidApplication;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidApplication;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication$2;->this$0:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication$2;->this$0:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->finish()V

    .line 404
    return-void
.end method

.class Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$2;
.super Ljava/lang/Object;
.source "AndroidFragmentApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$2;->this$0:Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$2;->this$0:Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->callbacks:Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;->exit()V

    .line 340
    return-void
.end method

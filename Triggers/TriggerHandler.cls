/*
 *  @Author: Endrit Sino
 *  @Date: 20/09/2018
 *
 * Abstract TriggerHandler
 *
 * @Description: Implements the shared execute method and dummy methods
 * which can be overwritten if necessary.
 */
abstract public class TriggerHandler {

    public virtual void before() {}

    public virtual void beforeInsert() {}

    public virtual void beforeUpdate() {}

    public virtual void beforeDelete() {}

    public virtual void after() {}

    public virtual void afterInsert() {}

    public virtual void afterUpdate() {}

    public virtual void afterDelete() {}

    public virtual void andFinally() {}

    public void execute() {
        if (Trigger.isBefore) {
            this.before();
            if (Trigger.isInsert) {
                this.beforeInsert();
            }
            if (Trigger.isUpdate) {
                this.beforeUpdate();
            }
            if (Trigger.isDelete) {
                this.beforeDelete();
            }
        } else if (Trigger.isAfter) {
            this.after();
            if (Trigger.isInsert) {
                this.afterInsert();
            }
            if (Trigger.isUpdate) {
                this.afterUpdate();
            }
            if (Trigger.isDelete) {
                this.afterDelete();
            }
        }
        this.andFinally();
    }
}
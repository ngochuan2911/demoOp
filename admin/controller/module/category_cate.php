<?phpclass ControllerModuleCategoryCate extends Controller {    private $error = array();    public function index() {        $this->load->language('module/category_cate');        $this->document->setTitle($this->language->get('heading_title'));        $this->load->model('extension/module');        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {            if (!isset($this->request->get['module_id'])) {                $this->model_extension_module->addModule('category_cate', $this->request->post);            } else {                $this->model_extension_module->editModule($this->request->get['module_id'], $this->request->post);            }            $this->session->data['success'] = $this->language->get('text_success');            $this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], true));        }        $data['heading_title'] = $this->language->get('heading_title');        $data['text_edit'] = $this->language->get('text_edit');        $data['text_enabled'] = $this->language->get('text_enabled');        $data['text_disabled'] = $this->language->get('text_disabled');        $data['entry_name'] = $this->language->get('entry_name');        $data['entry_manufacturer'] = $this->language->get('entry_manufacturer');        $data['entry_limit'] = $this->language->get('entry_limit');        $data['entry_width'] = $this->language->get('entry_width');        $data['entry_height'] = $this->language->get('entry_height');        $data['entry_status'] = $this->language->get('entry_status');        $data['help_manufacturer'] = $this->language->get('help_manufacturer');        $data['button_save'] = $this->language->get('button_save');        $data['button_cancel'] = $this->language->get('button_cancel');        if (isset($this->error['warning'])) {            $data['error_warning'] = $this->error['warning'];        } else {            $data['error_warning'] = '';        }        if (isset($this->error['name'])) {            $data['error_name'] = $this->error['name'];        } else {            $data['error_name'] = '';        }        if (isset($this->error['width'])) {            $data['error_width'] = $this->error['width'];        } else {            $data['error_width'] = '';        }        if (isset($this->error['height'])) {            $data['error_height'] = $this->error['height'];        } else {            $data['error_height'] = '';        }        $data['breadcrumbs'] = array();        $data['breadcrumbs'][] = array(            'text' => $this->language->get('text_home'),            'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)        );        $data['breadcrumbs'][] = array(            'text' => $this->language->get('text_module'),            'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], true)        );        if (!isset($this->request->get['module_id'])) {            $data['breadcrumbs'][] = array(                'text' => $this->language->get('heading_title'),                'href' => $this->url->link('module/manufacturer_featured', 'token=' . $this->session->data['token'], true)            );        } else {            $data['breadcrumbs'][] = array(                'text' => $this->language->get('heading_title'),                'href' => $this->url->link('module/manufacturer_featured', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], true)            );        }        if (!isset($this->request->get['module_id'])) {            $data['action'] = $this->url->link('module/category_cate', 'token=' . $this->session->data['token'], true);        } else {            $data['action'] = $this->url->link('module/category_cate', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], true);        }        $data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], true);        if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {            $module_info = $this->model_extension_module->getModule($this->request->get['module_id']);        }        $data['token'] = $this->session->data['token'];        if (isset($this->request->post['name'])) {            $data['name'] = $this->request->post['name'];        } elseif (!empty($module_info)) {            $data['name'] = $module_info['name'];        } else {            $data['name'] = '';        }        $this->load->model('news/category');        if (!empty($this->request->post['category_id'])) {            $data['category_id'] = $this->request->post['category_id'];        } elseif (!empty($module_info['category_id'])) {            $data['category_id'] = $module_info['category_id'];        } else {            $data['category_id'] = '';        }        if (isset($this->request->post['limit'])) {            $data['limit'] = $this->request->post['limit'];        } elseif (!empty($module_info)) {            $data['limit'] = $module_info['limit'];        } else {            $data['limit'] = 5;        }        if (isset($this->request->post['width'])) {            $data['width'] = $this->request->post['width'];        } elseif (!empty($module_info)) {            $data['width'] = $module_info['width'];        } else {            $data['width'] = 200;        }        if (isset($this->request->post['height'])) {            $data['height'] = $this->request->post['height'];        } elseif (!empty($module_info)) {            $data['height'] = $module_info['height'];        } else {            $data['height'] = 200;        }        if (isset($this->request->post['status'])) {            $data['status'] = $this->request->post['status'];        } elseif (!empty($module_info)) {            $data['status'] = $module_info['status'];        } else {            $data['status'] = '';        }        $data['categories'] = array();        $results = $this->model_news_category->getListCategories();        if (!empty($results)) {            foreach ($results as $result) {                $data['categories'][] = array(                    'category_id' => $result['category_id'],                    'name' => $result['name']                );            }        }        $data['header'] = $this->load->controller('common/header');        $data['column_left'] = $this->load->controller('common/column_left');        $data['footer'] = $this->load->controller('common/footer');        $this->response->setOutput($this->load->view('module/category_cate', $data));    }    protected function validate() {        if (!$this->user->hasPermission('modify', 'module/category_cate')) {            $this->error['warning'] = $this->language->get('error_permission');        }        return !$this->error;    }}